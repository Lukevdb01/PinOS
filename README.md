# PinOS - ARM (32-bit)

PinOS is a personal hobby project for learning OS development using C and assembly. The ultimate goal of this OS is to manage a custom-built 3D printer by providing a full-fledged desktop system. The system will host a web server for an online control panel, offer access to GPIO pins, include functionality for slicing 3D files into G-code, and manage all the Arduino boards used in the 3D printer setup.

The target hardware for this OS is the [RP2040 Pi Zero](https://www.waveshare.com/rp2040-pizero.htm), with the following specifications:  
- **Processor**: Dual-core ARM Cortex-M0+ @ 133 MHz  
- **Memory**: 264 KB of SRAM  
- **Storage**: 16 MB onboard flash  


## Roadmap

### **Phase 1: Core Kernel Development**
- [x] Set up a basic bootloader for the RP2040.  
- [x] Implement kernel initialization routines (C/Assembly).  
- [ ] Create a memory management system:
  - Stack and heap management.  
  - Basic dynamic memory allocation.  
- [ ] Develop multitasking support:
  - Context switching.  
  - Scheduler for cooperative multitasking.  

### **Phase 2: Hardware Abstraction Layer (HAL)**
- [ ] Implement GPIO pin control and abstraction.  
- [ ] Set up UART for debugging and I/O.  
- [ ] Add SPI/I2C support for communication with external peripherals.  
- [ ] Develop support for interfacing with Arduino boards.  

### **Phase 3: Filesystem and Storage**
- [ ] Implement a basic file system for the onboard flash memory.  
- [ ] Add support for loading, reading, and writing files.  
- [ ] Ensure compatibility with G-code file handling.  

### **Phase 4: Networking and Web Server**
- [ ] Implement TCP/IP stack for network communication.  
- [ ] Develop a lightweight HTTP server for hosting the control panel.  
- [ ] Add basic authentication and security for the online interface.  

### **Phase 5: 3D Printer Integration**
- [ ] Create a module for parsing and processing G-code.  
- [ ] Develop functions to send commands to the Arduino-controlled printer.  
- [ ] Implement real-time monitoring of printer status via the control panel.  

### **Phase 6: Desktop System Features**
- [ ] Create a basic GUI framework for the desktop system.  
- [ ] Add applications for file management and 3D slicing.  
- [ ] Optimize the OS for real-time performance.  

### **Phase 7: Testing and Optimization**
- [ ] Stress-test the kernel for stability and performance.  
- [ ] Optimize resource usage for low-power, embedded systems.  
- [ ] Document the code and write user/developer guides.  

## Libraries I Plan to Use

- [LVGL Graphical User Interface](https://lvgl.io/)  
- [Pico SDK](https://github.com/raspberrypi/pico-sdk)  

Stay tuned for updates!
