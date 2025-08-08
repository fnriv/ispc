/*
  Author: Faith Rivera
    Date: 2025-08-07
  Title: Simple Vectors Example - ISPC file
  Description: This example demonstrates the use of vector addition while using ISPC.

*/

export void vector_add(uniform float a[], uniform float b[], uniform float result[], uniform int count) {
    foreach (i = 0 ... count) { // DexLabel('loop_start')
        float val_a = a[i]; // DexLabel('load_a')
        float val_b = b[i]; // DexLabel('load_b')

        result[i] = val_a + val_b; // DexLabel('add_store')
    }
}

// Only test the first iteration where we know the exact values
// DexExpectWatchValue('val_a', '0.0', on_line=ref('load_a'))
// DexExpectWatchValue('val_b', '0.0', on_line=ref('load_b'))
// DexExpectWatchValue('i', '0', on_line=ref('loop_start'))