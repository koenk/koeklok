#include <avr/io.h>
#include <avr/interrupt.h>

#include "uart.h"

#define BAUDRATE 115200UL

FILE uart_fd = FDEV_SETUP_STREAM(uart_fputc, NULL, _FDEV_SETUP_WRITE);

#define RECV_BUF_MAX 32
static char recv_buf[RECV_BUF_MAX];
static unsigned char recv_buf_size = 0;
static uart_recv_cb_t recv_cb = NULL;

/*
 * Calculate the BAUD setting based on our clock frequency. The BAUD register
 * has a 10-bit integer and a 6-bit fractional part, hence our multiplication by
 * 64. We don't use double speed mode, and thus take 16 samples.
 */
#define UART_SAMPLES 16
#define CALC_BAUD(BAUD_RATE) (uint16_t)((float)(F_CPU * 64.0 \
            / (UART_SAMPLES * (float)BAUD_RATE)) + 0.5)


void uart_init(void)
{
    /* Set TxD (PB2) in output mode. */
    PORTB.OUTSET = PIN2_bm;
    PORTB.DIRSET = PIN2_bm;

    /* Set RxD (PB3) in input mode. */
    PORTB.OUTCLR = PIN3_bm;

    USART0.BAUD = CALC_BAUD(BAUDRATE);

    USART0.CTRLA = 0; /* Disable interrupts until requested. */

    USART0.CTRLB = USART_RXEN_bm           /* Enable Rx */
                 | USART_TXEN_bm           /* Enable Tx */
                 | USART_RXMODE_NORMAL_gc; /* Normal mode */

    USART0.CTRLC = USART_CMODE_ASYNCHRONOUS_gc /* Async mode */
                 | USART_CHSIZE_8BIT_gc        /* 8-bit characters */
                 | USART_PMODE_DISABLED_gc     /* No parity */
                 | USART_SBMODE_1BIT_gc;       /* 1 stop bit */
}

void uart_set_recv_callback(uart_recv_cb_t func)
{
    recv_cb = func;

    USART0.CTRLA |= USART_RXCIE_bm; /* Enable Rx complete interrupt */
}

/* Rx interrupt */
ISR(USART0_RXC_vect)
{
    char val;

    cli();

    /* Read incoming data and clear RXC interrupt flag */
    val = USART0.RXDATAL;

    /* Echo back */
    uart_send(val);

    if (val == '\n' || val == '\r') {
        if (recv_buf_size) {
            recv_buf[recv_buf_size] = '\0';
            recv_buf_size = 0;
            if (recv_cb)
                recv_cb(recv_buf);
        }
    } else {
        recv_buf[recv_buf_size++] = val;
        if (recv_buf_size == RECV_BUF_MAX - 1)
            recv_buf_size = 0;
    }

    sei();
}

void uart_send(const uint8_t c)
{
    loop_until_bit_is_set(USART0.STATUS, USART_DREIF_bp);
    USART0.TXDATAL = c;
}

uint8_t uart_recv(void)
{
    /* Block until data is received. */
    loop_until_bit_is_set(USART0.STATUS, USART_RXCIF_bp);
    return USART0.RXDATAL;
}

bool uart_has_data(void)
{
    return USART0.STATUS & USART_RXCIF_bm;
}

int uart_fputc(const char c, FILE *stream)
{
    (void)stream;
    uart_send(c);
    return c;
}

void uart_puts(const char *s)
{
    while (*s)
        uart_send(*s++);
}

void uart_send_inthex(const unsigned i)
{
    const char digits[] = { '0', '1', '2', '3', '4', '5', '6', '7',
                            '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

#define getdig(num, digit) digits[((num) >> ((digit) * 4)) & 0xf]

    uart_send(getdig(i, 3));
    uart_send(getdig(i, 2));
    uart_send(getdig(i, 1));
    uart_send(getdig(i, 0));
}
