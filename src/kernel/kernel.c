#include <stdint.h>

// stdlib
#include "include/uart.h"

void kernel_main()
{
    uart_puts("Welcome to PinOS!\n");

    while (true)
    {
        bool state = true;
        if (state)
        {
            uart_puts("Condition met: Kernel is operating normally.\n");
        }
        else
        {
            uart_puts("Condition not met: Please check the system.\n");
        }
    }
}

void _kern()
{
    kernel_main();
}
