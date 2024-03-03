#include <iostream>
#include "function.hpp"

extern "C" {
float square(float A, float B) {
    return A * B / 2;
}
}

extern "C" {
char* translation(long x) {
    char* num = new char[1000];
    char* rev = new char[1000];
    size_t i = 0;
    while (x != 0) {
        int digit = x % 3;
        rev[i] = digit + 48;
        x /= 3;
        ++i;
    }

    for (size_t j = 0; j != i; ++j) {
        num[j] = rev[i - j - 1];
    }

    delete[] rev;

    return num;
}
}