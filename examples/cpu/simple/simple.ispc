/*
  Copyright (c) 2010-2023, Intel Corporation

  SPDX-License-Identifier: BSD-3-Clause
*/

export void simple(uniform float vin[], uniform float vout[],
                   uniform int count) {
    foreach (index = 0 ... count) { // DexLabel('loop_start')
        // Load the appropriate input value for this program instance.
        float v = vin[index]; // DexLabel('load_input')

        // Do an arbitrary little computation, but at least make the
        // computation dependent on the value being processed
        if (v < 3.) // DexLabel('condition_check')
            v = v * v; // DexLabel('square_path')
        else
            v = sqrt(v); // DexLabel('sqrt_path')

        // And write the result to the output array.
        vout[index] = v; // DexLabel('store_result')
    }
}

// Track variable 'v' through the computation
// DexExpectWatchValue('v', '0.0', on_line=ref('condition_check'))
// DexExpectWatchValue('v', '0.0', on_line=ref('store_result'))

