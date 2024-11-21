.global _start

.section .text
_start:
    // Set up stack pointer
    ldr sp, =0x40000

    // Print the bootloader message
    ldr r0, =message
    bl uart_puts

    // Load kernel and jump to it
    bl load_kernel

stop:
    b stop  // Infinite loop to prevent fall-through

// Print string to UART
uart_puts:
uart_loop:
    ldrb r1, [r0]          // Load byte from string
    cmp r1, #0             // Check for null-terminator
    beq uart_done          // If null-terminator, end loop

    bl uart_send           // Send byte to UART

    add r0, r0, #1         // Move to next byte in string
    b uart_loop            // Repeat loop

uart_send:
    mov r2, r1             // Move char to r2
    ldr r3, =0x101f1000    // UART0 base address
    str r2, [r3]           // Send character to UART
    bx lr                  // Return from uart_send

uart_done:
    bx lr                  // Return from uart_puts

// Load kernel and jump to entry point
load_kernel:
    ldr r1, =kernel_entry  // Load address of kernel entry point
    ldr r2, [r1]           // Load the kernel entry address
    cmp r2, #0             // Check if kernel entry is set
    beq kernel_not_found   // If entry is 0, jump to error handling

    mov r0, r2             // Move kernel entry address to r0
    bx r0                  // Jump to the kernel

kernel_not_found:
    ldr r0, =msg_kernel_not_found
    bl uart_puts           // Print error message about missing kernel
    b stop                 // Halt execution

msg_kernel_not_found:
    .asciz "Kernel entry point not found or invalid\n"

msg_after_jump:
    .asciz "Kernel jump successful\n"

.section .data
message:
    .asciz "Bootloader running, UART is working!\n"

kernel_entry:
    .word 0x8000  // Address where the kernel entry point is located
