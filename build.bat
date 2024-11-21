@echo off
mkdir output
arm-none-eabi-as -o output/bootloader.o src/bootloader.s
arm-none-eabi-gcc -ffreestanding -nostdlib -c -o output/kernel.o src/kernel/kernel.c
arm-none-eabi-ld -T src/link.ld -o output/bootloader.elf output/bootloader.o output/kernel.o
qemu-system-arm -M versatilepb -kernel output/bootloader.elf -nographic -serial mon:stdio

pause