
#include <float.h>

#ifndef FLT_TRUE_MIN
# error FLT_TRUE_MIN is not defined!
#endif

#ifndef DBL_TRUE_MIN
# error DBL_TRUE_MIN is not defined!
#endif

#ifndef LDBL_TRUE_MIN
# error LDBL_TRUE_MIN is not defined!
#endif

void test() {
    float f = FLT_TRUE_MIN;
    double d = DBL_TRUE_MIN;
    long double ld = LDBL_TRUE_MIN;
}

int main() {
    test();
}
