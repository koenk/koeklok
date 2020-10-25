#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#include "uart.h"

/* Set by makefile based on git version. */
#ifndef VERSION
# define VERSION "undef"
#endif

/*
 * UPDI     PA0 16
 * Rx       PB3  8
 * Tx       PB2  9
 * LED      PA1 17
 */

void handle_command(char *msg)
{
    _delay_ms(100);

    if (!strcmp(msg, "flash")) {
        /* Set user row fuse to request bootloader to flash. */
        USERROW.USERROW0 = 0xB0;
        _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
        loop_until_bit_is_clear(NVMCTRL.STATUS, NVMCTRL_EEBUSY_bp);

        _delay_ms(100);

        /* Issue system reset */
        _PROTECTED_WRITE(RSTCTRL.SWRR, RSTCTRL_SWRE_bm);

    } else if (!strncmp(msg, "ver", 3)) {
        printf("Version %s\r\n", VERSION);

    } else {
        printf("Unknown command \"%s\"\r\n", msg);
    }
}

int main(void)
{
    /* Set CLK to 3.33MHz, output clock on PB5 (pin6). */
    _PROTECTED_WRITE(CLKCTRL_MCLKCTRLA, CLKCTRL_CLKOUT_bm |
                                        CLKCTRL_CLKSEL_OSC20M_gc);
    _PROTECTED_WRITE(CLKCTRL_MCLKCTRLB, CLKCTRL_PEN_bm |
                                        CLKCTRL_PDIV_6X_gc);

    /* Setup serial communication. */
    uart_init();
    uart_set_recv_callback(handle_command);
    stdout = stderr = &uart_fd;

    /* Enable LED outputs. */
    PORTA.DIRSET = PIN1_bm;
    PORTB.DIRSET = PIN0_bm;

    /* Set PB4 input, pull-up and enable interrupts. */
    PORTB.DIRCLR = PIN4_bm;
    PORTB.PIN4CTRL = PORT_PULLUPEN_bm | PORT_ISC_FALLING_gc;

    uart_puts("*** Koeklok initialized\r\n");
    _delay_ms(1000);

    sei();

    while (1) {
        uart_puts("hoi\r\n");
        PORTB.OUTTGL = PIN0_bm;

        _delay_ms(1000);
    }
}

ISR(PORTB_PORT_vect)
{
    cli();
    PORTA.OUTTGL = PIN1_bm;
    PORTB.INTFLAGS = PORT_INT4_bm;
    sei();
}
