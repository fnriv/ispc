/*
  Author: Faith Rivera
    Date: 2025-08-07
  Title: Simple Vectors Example
  Description: This example demonstrates the use of vector addition while using ISPC.

*/

#include <stdio.h>
#include <stdlib.h>

#include "simple_vectors_ispc.h"
using namespace ispc;

int main() {
    float a[16], b[16], result[16];
    for (int i = 0; i < 16; i++) {
        a[i] = static_cast<float>(i);
        b[i] = static_cast<float>(i * 2);
    }
    vector_add(a, b, result, 16);
    for (int i = 0; i < 16; i++) {
        printf("result[%d] = %f\n", i, result[i]);
    }
    return 0;
}