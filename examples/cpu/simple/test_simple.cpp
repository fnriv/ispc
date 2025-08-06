#include "simple_ispc.h"

int main() {
    float vin[4] = {0.0f, 1.0f, 2.0f, 3.0f};
    float vout[4];
    
    // Call the ISPC function directly
    ispc::simple(vin, vout, 4);
    
    return 0;
}
