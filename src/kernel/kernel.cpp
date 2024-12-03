#include "include/kernel.h"

int main() {
    stdio_init_all();

    printf("Hello, World!\n");
    while (true) {
        tight_loop_contents(); 
    }

    return 0;
}
