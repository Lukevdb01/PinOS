.global _start

.section .text
_start:
    ldr sp, =0x40000
    ldr r0, =message
    bl uart_puts
    bl load_kernel

stop:
    b stop

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
    ldr r3, =0x101f1000
    str r2, [r3]
    bx lr

uart_done:
    bx lr

load_kernel:
    ldr r1, =kernel_entry
    ldr r2, [r1]
    bx r2

.section .data
message:
    .asciz "Bootloader running, UART is working!\n"

kernel_entry:
    .word 0x8000
