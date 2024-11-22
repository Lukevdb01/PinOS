#ifndef STRING_CORE_H
#define STRING_CORE_H

void string_concat(char *dest, const char *msg, const char *msg1) {
    while (*msg) {
        *dest++ = *msg++;
    }

    while (*msg1) {
        *dest++ = *msg1++;
    }

    *dest = '\0';
}
#endif