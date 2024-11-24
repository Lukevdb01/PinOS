#if !defined(UART_CORE_H)
#define UART_CORE_H

#include <stdint.h>
#include <stdbool.h>

#define UART0_BASE 0x101f1000
#define UART0_DR   *((volatile uint32_t *)(UART0_BASE + 0x00))

void uart_putc(char c) {
    UART0_DR = c;
}

void uart_puts(const char *str) {
    while (*str) {
        uart_putc(*str++);
    }
}

#endif
