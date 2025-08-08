/*
  Author: Faith Rivera
    Date: 2025-08-08
  Title: Simple Vectors Example - ISPC file
  Description: This example demonstrates the use of vector scaling while using ISPC.

*/

export void vector_scale(uniform float a[], uniform float result[], uniform float scalar, uniform int count) {
    foreach (i = 0 ... count) { // DexLabel('loop_start')
        result[i] = a[i] * scalar; // DexLabel('scale_store')
    }
}

// Track the loop counter
// DexExpectWatchValue('i', '0', on_line=ref('loop_start'))
// DexExpectWatchValue('i', '0', on_line=ref('scale_store'))