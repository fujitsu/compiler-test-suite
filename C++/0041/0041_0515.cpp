#include "public3/004.h"
#include <initializer_list>

int f(int n) { return n; }

void test()
{
    assert(f({'a'}) == 0x61);
    assert(f({}) == 0);
}

PASS_CASE_MAIN_FUNCTION
