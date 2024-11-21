#include <stdint.h>

#define UART0_BASE 0x101f1000
#define UART0_DR   *((volatile uint32_t *)(UART0_BASE + 0x00))

void uart_putc(char c) {
    UART0_DR = c;  // Write the character to the UART data register
}

void uart_puts(const char *str) {
    while (*str) {
        uart_putc(*str++);
    }
}

void kernel_main() {
    uart_puts("Kernel has started!\n");

    // Infinite loop to keep the kernel running
    while (1) {
        // Add additional kernel logic here
    }
}

// Entry point for the kernel (called from bootloader)
void _kern() {
    kernel_main();  // Start kernel execution
}
