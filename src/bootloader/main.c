/*
 * Bootloader for programming firmware over UART.
 *
 * The size of the bootloader is defined by the BOOTEND fuse, which specified
 * the number of 256-byte blocks the boot section spans. Since code in the
 * bootloader section can only modify application memory in flash, we need to
 * set the BOOTEND fuse correctly. This value is defined in
 * ../avr_common/Makefile.inc and propagated here to know the offset we have to
 * start writing the payload to. The build infrastructure will check if the
 * value set is correct (our bootloader actually fits) and sets the correct
 * fuse value.
 *
 * Based on AN2634 by Microchip.
 */

#include <assert.h>
#include <stdbool.h>

#include <avr/io.h>
#include <util/delay.h>

#include "uart.h"

/*
 * The bootloader lives at address [0,BOOTSIZE) in program memory, mapped at
 * MAPPED_PROGMEM_START (0x8000) when accessed through data memory. Hence the
 * application itself will live at address BOOTSIZE in program memory, and
 * (BOOTSIZE + 0x8000) in data memory where we will write it to.
 */
#ifndef BOOTSIZE
# error BOOTSIZE must be defined
#endif
#define MAPPED_APPMEM_START     (MAPPED_PROGMEM_START + BOOTSIZE)
#define MAPPED_APPMEM_SIZE      (MAPPED_PROGMEM_SIZE - BOOTSIZE)

typedef void (*const app_t)(void);


static bool should_run_bootloader(void)
{

    /* Run bootloader if there seem to be no application code. */
    uint8_t *appmem = (uint8_t *)MAPPED_APPMEM_START;
    if (appmem[0] == 0xff && appmem[1] == 0xff &&
        appmem[2] == 0xff && appmem[3] == 0xff)
        return true;

    /* Run bootloader if software requests it through USERROW. */
    if (USERROW.USERROW0 == 0xB0)
        return true;

    return false;
}

static inline void toggle_status_led(void)
{
    /* Toggle led (PA1) */
    PORTA.OUTTGL = PIN1_bm;
}

static inline void run_application(void)
{
    /* Enable Boot Section Lock */
    NVMCTRL.CTRLB = NVMCTRL_BOOTLOCK_bm;

    /* Jump to application, located immediately after boot section */
    app_t app = (app_t)(BOOTSIZE / sizeof(app_t));
    app();
}

static void program_from_uart(void)
{
    const uint16_t block_size = MAPPED_PROGMEM_PAGE_SIZE;
    uint8_t *appmem = (uint8_t *)MAPPED_APPMEM_START;
    uint8_t blocks_to_flash;
    uint8_t block;
    int tries;
    uint16_t i;
    uint8_t err;

retry:
    uart_puts("BR ");
    uart_send_inthex(BOOTSIZE);
    uart_puts("\r\n");

    tries = 0;
    while (1) {
        _delay_ms(100);

        if (uart_has_data())
            break;

        tries++;
        if (tries == 10)
            goto retry;
    }

    blocks_to_flash = uart_recv();
    uart_send(blocks_to_flash);

    err = uart_recv();
    if (err)
        goto retry;

    for (block = 0; block < blocks_to_flash; block++) {
        uint8_t *block_ptr = appmem + (block * block_size);

retry_block:
        for (i = 0; i < block_size; i++) {
            uint8_t byte = uart_recv();
            block_ptr[i] = byte;
        }

        _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
        loop_until_bit_is_clear(NVMCTRL.STATUS, NVMCTRL_FBUSY_bp);

        toggle_status_led();

        for (i = 0; i < block_size; i++)
            uart_send(block_ptr[i]);

        err = uart_recv();
        if (err)
            goto retry_block;
    }

    uart_puts("OK\r\n");
    err = uart_recv();
    if (err)
        goto retry;
}

static void run_bootloader(void)
{
    /* Set led (PA1) as output and turn on. */
    PORTA.DIRSET = PIN1_bm;
    PORTA.OUTSET = PIN1_bm;

    uart_init();

    uart_puts("*** Bootloader\r\n");

    loop_until_bit_is_clear(NVMCTRL.STATUS, NVMCTRL_FBUSY_bp);

    program_from_uart();

    /* Disable request-for-bootloader from application. */
    USERROW.USERROW0 = 0x0D;
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
    loop_until_bit_is_clear(NVMCTRL.STATUS, NVMCTRL_EEBUSY_bp);

    uart_puts("*** Bootloader done\r\n");
}

__attribute__((naked)) __attribute__((section(".ctors"))) void boot(void)
{
    /* AVR GCC expects r1=0 */
    asm volatile("clr r1");

    _delay_ms(100);

    if(should_run_bootloader())
        run_bootloader();
    else
        run_application();

    _delay_ms(1000);

    /* Issue system reset */
    _PROTECTED_WRITE(RSTCTRL.SWRR, RSTCTRL_SWRE_bm);
}

