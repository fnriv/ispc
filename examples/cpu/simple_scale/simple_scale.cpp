/*
  Author: Faith Rivera
    Date: 2025-08-08
  Title: Simple Vectors Example
  Description: This example demonstrates the use of vector scaling while using ISPC.

    Commands:
    ispc simple_scale.ispc -g -o simple_scale_ispc.o -h simple_scale_ispc.h
    clang++ -g simple_scale.cpp simple_scale_ispc.o -o simple_scale_run
    dexter.py test --binary=./simple_scale_run --debugger=lldb simple_scale.ispc -v
*/

#include <stdio.h>
#include <stdlib.h>

#include "simple_scale_ispc.h"
using namespace ispc;

int main() {
    float a[16], result[16];
    for (int i = 0; i < 16; i++) {
        a[i] = static_cast<float>(i);
    }
    vector_scale(a, result, 2.0f, 16);
    for (int i = 0; i < 16; i++) {
        printf("result[%d] = %f\n", i, result[i]);
    }
    return 0;
}