ENTRY(_start)

MEMORY
{
    RAM (rwx) : ORIGIN = 0x10000, LENGTH = 0x10000  /* 64KB of RAM */
    FLASH (rx) : ORIGIN = 0x0, LENGTH = 0x10000    /* 64KB of flash memory */
}

SECTIONS
{
    . = 0x0;  /* Start at the beginning of flash */

    /* Bootloader section */
    .text.bootloader : {
        *(.text)        /* All the .text sections from bootloader files */
        *(.data)        /* All the .data sections from bootloader files */
    } > FLASH

    /* Kernel section */
    .text.kernel : {
        *(.text)        /* All the .text sections from kernel files */
        *(.data)        /* All the .data sections from kernel files */
    } > FLASH

    /* BSS (uninitialized data) section */
    .bss : {
        *(.bss)
        *(.bss.*)
    } > RAM

    /* Stack section */
    .stack : {
        . = ALIGN(8);
        stack_start = .;
        . += 0x2000;  /* 8KB stack size */
        stack_end = .;
    } > RAM
}
