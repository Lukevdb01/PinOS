ENTRY(_start)

MEMORY {
    TEXT (rx)  : ORIGIN = 0x10000, LENGTH = 0x100000  /* Code section */
    DATA (rw)  : ORIGIN = 0x200000, LENGTH = 0x100000  /* Data section */
    BSS  (rw)  : ORIGIN = 0x300000, LENGTH = 0x100000  /* Uninitialized data */
}

SECTIONS {
    . = 0x10000;  /* Start the bootloader at 0x10000 */

    /* Code section */
    .text : {
        *(.text)
    } > TEXT

    /* Data section */
    .data : {
        *(.data)
    } > DATA

    /* Uninitialized data section */
    .bss : {
        *(.bss)
    } > BSS
}
