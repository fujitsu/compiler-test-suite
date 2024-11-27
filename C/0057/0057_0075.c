
#include <float.h>

#ifndef FLT_HAS_SUBNORM
# error FLT_HAS_SUBNORM is not defined!
#endif

#ifndef DBL_HAS_SUBNORM
# error DBL_HAS_SUBNORM is not defined!
#endif

#ifndef LDBL_HAS_SUBNORM
# error LDBL_HAS_SUBNORM is not defined!
#endif

void test() {}

int main() {
    test();
}
