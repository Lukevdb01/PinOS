.global _start

.section .text
_start:
    // Set up stack pointer
    ldr sp, =0x40000

    // Print the bootloader message
    ldr r0, =message
    bl uart_puts

    // Load kernel into memory and jump to it
    bl load_kernel
    bl jump_to_kernel

stop:
    b stop

// Print string to UART
uart_puts:
uart_loop:
    ldrb r1, [r0]
    cmp r1, #0
    beq uart_done

    bl uart_send

    add r0, r0, #1
    b uart_loop

uart_send:
    mov r2, r1
    ldr r3, =0x101f1000   // UART0 base address
    str r2, [r3]          // Send character to UART
    bx lr

uart_done:
    bx lr

// Load kernel
load_kernel:
    ldr r1, =kernel_entry
    ldr r2, [r1]          // Load address of kernel entry
    mov r0, r2            // Move address to r0 (kernel entry)
    bx r0                 // Jump to kernel

jump_to_kernel:
    ldr r0, =kernel_entry
    bx r0                 // Jump to kernel entry

.section .data
message:
    .asciz "Bootloader running, UART is working!\n"

kernel_entry:
    .word 0x8000  // Address where the kernel entry point is located
