#ifndef UART_H
#define UART_H

#include <stdio.h>
#include <stdbool.h>

typedef void (*uart_recv_cb_t)(char *msg);

extern FILE uart_fd;

void uart_init(void);
void uart_set_recv_callback(uart_recv_cb_t func);

void uart_send(const uint8_t c);
uint8_t uart_recv(void);
bool uart_has_data(void);

int uart_fputc(const char c, FILE *stream);
void uart_puts(const char *s);

void uart_send_inthex(const unsigned i);

#endif
