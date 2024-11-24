@echo off
mkdir output

:: Assemble bootloader
arm-none-eabi-as -o output/bootloader.o src/bootloader.s

:: Compile kernel with the header-only memory library
arm-none-eabi-gcc -c -o output/kernel.o src/kernel/kernel.c -ffreestanding -O2 -Wall -Wextra

:: Link objects into ELF
arm-none-eabi-ld -T src/link.ld -o output/output.elf output/bootloader.o output/kernel.o

:: Run with QEMU
qemu-system-arm -M versatilepb -nographic -kernel output/output.elf -serial mon:stdio

pause
