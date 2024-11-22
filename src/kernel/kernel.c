#include <stdint.h>

// stdlib
#include "include/string.h"

#define UART0_BASE 0x101f1000
#define UART0_DR   *((volatile uint32_t *)(UART0_BASE + 0x00))

void uart_putc(char c) {
    while ((UART0_DR & (1 << 5)) == 0);
    UART0_DR = c;
}

void uart_puts(const char *str) {
    while (*str) {
        uart_putc(*str++);
    }
}

void kernel_main() { 
    char msg[] = "welcome to PinOS!";
    char buffer[100];
    string_concat(buffer, "Hello, and ", msg);

    while (1) {}
}

void _kern() {
    kernel_main(); 
}
