# Contributing to PinOS

Thank you for your interest in contributing to **PinOS**! This project aims to build a lightweight desktop operating system for the RP2040, optimized for managing 3D printers. Your contributions help make this vision a reality.  

Please take a moment to review these guidelines to ensure your contributions align with the project’s goals.

---

## How You Can Contribute

### 1. **Report Bugs**
   - Found a bug? Please [open an issue](https://github.com/Lukevdb01/PinOS/issues) and include:
     - A clear description of the issue.
     - Steps to reproduce the problem.
     - Any relevant logs, error messages, or screenshots.
   - Mark the issue with the `bug` label.

### 2. **Suggest Features**
   - Have an idea for a feature? [Open an issue](https://github.com/Lukevdb01/PinOS/issues) and explain:
     - What the feature does.
     - Why it’s valuable for PinOS.
     - Any technical details or references.

### 3. **Submit Code**
   - Fork the repository and create a branch for your changes:
     ```bash
     git checkout -b feature/your-feature-name
     ```
   - Commit changes with meaningful messages:
     ```bash
     git commit -m "Add: Short description of your change"
     ```
   - Push the branch and open a pull request (PR) against the `main` branch.
   - PR Guidelines:
     - Keep changes focused and well-documented.
     - Test your code thoroughly.
     - Include comments for non-obvious code.

### 4. **Write Documentation**
   - Help improve our [documentation](https://github.com/Lukevdb01/PinOS/docs).
   - Add or improve explanations, examples, or references.
   - Ensure clarity and conciseness.

### 5. **Test and Review**
   - Review open pull requests, test changes, and leave constructive feedback.
   - Help maintainers by identifying potential issues or improvements.

---

## Development Setup

### Prerequisites
- **Hardware**: RP2040-based Pi Zero or similar hardware.
- **Software**: 
  - GCC toolchain for ARM
  - CMake
  - Raspberry Pi Pico SDK
  - Recommended: Visual Studio Code or equivalent IDE

### Clone the Repository
```bash
git clone https://github.com/your-repo/pinos.git
cd pinos
git submodule update --init --recursive
```

### Build Instructions
1. Set up the toolchain:
   ```bash
   export PICO_SDK_PATH=$(pwd)/lib/pico-sdk
   ```
2. Configure and build:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

### Running PinOS
- Flash the kernel onto your RP2040 using:
  ```bash
  cp build/kernel.uf2 /path-to-pico
  ```
- Restart the device and access the desktop interface.

---

## Contribution Guidelines

### Code Style
- Follow the C11 (or higher, if supported) standard for C++ code.
- Use descriptive variable names and meaningful comments.
- Ensure proper indentation and formatting.

### Licensing
- By contributing, you agree that your code will be licensed under the same license as PinOS, MIT License.

---

## Code of Conduct
This project adheres to the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/). By participating, you agree to maintain a collaborative and respectful environment.

---

## Need Help?
If you have questions or need guidance, feel free to:
- [Open a discussion](https://github.com/Lukevdb01/PinOS/discussions).

---

We’re excited to have you on board and can’t wait to see your contributions! 🎉
