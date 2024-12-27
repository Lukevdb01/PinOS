# PinOS - ARM (32-bit)

**PinOS** is a personal hobby project to explore operating system development using C and assembly. The ultimate goal of PinOS is to manage a custom-built 3D printer while serving as a fully functional desktop system. The OS will host a Vue-based web control panel, provide GPIO pin access, support slicing 3D models into G-code, and manage communication with Arduino boards responsible for the printer's operation.  

Designed for embedded environments, PinOS is tailored for the **RP2040 Pi Zero**, with these specifications:  

- **Processor**: Dual-core ARM Cortex-M0+ @ 133 MHz  
- **Memory**: 264 KB of SRAM
- **Storage**: 16 MB onboard flash  

## Roadmap

### Phase 1: Core Kernel Development
- [ ] **Kernel Initialization**: Implement startup routines using C and assembly.  
- **Memory Management**:  
  - [ ] Set up stack and heap management.  
  - [ ] Introduce basic dynamic memory allocation.  
- **Multithreading**:  
  - [ ] Implement a context-switching mechanism.  
  - [ ] Develop a round-robin scheduler for cooperative multitasking.  

### Phase 2: Hardware Abstraction Layer (HAL)
- **Peripheral Communication**:  
  - [ ] Add SPI/I2C support for interfacing with external hardware.  
  - [ ] Enable control of Arduino boards for 3D printer components.  

### Phase 3: Filesystem and Storage
- **Filesystem**:  
  - [ ] Develop a lightweight (maybe FAT32) filesystem for onboard flash.  
  - [ ] Enable file operations for G-code and configuration files.  
- [ ] **External Storage**: Plan for optional external storage support via SD card.  

### Phase 4: Networking and Web Control Panel
- **Networking Stack**:  
  - [ ] Implement a TCP/IP stack for Ethernet or Wi-Fi modules.  
- **Web Server**:  
  - [ ] Create a lightweight HTTP server to host a Vue-based control panel.   

### Phase 5: 3D Printer Integration
- **G-code Handling**:  
  - [ ] Develop a G-code parsing and slicing module.  
  - [ ] Implement commands to control the Arduino-based printer.  
  - [ ] Integrate real-time status updates for printer operation.  

### Phase 6: GUI and Desktop Features
- **GUI Framework**:  
  - [ ] Create a minimal modern desktop interface with a menu bar and flyouts.  
  - [ ] Include core apps like a file manager, settings, and 3D slicing tools.  
- **Desktop Optimization**: Focus on low-resource usage for real-time performance.  

### Phase 7: Testing and Optimization
- [ ] **Stability Testing**: Stress-test multitasking and I/O operations.  
- [ ] **Performance Tuning**: Optimize the system for minimal power and memory usage.   

## Libraries and Tools
- **LVGL**: For building the graphical user interface.  