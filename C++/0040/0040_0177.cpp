#include "public2/004.h"
#include "000.h"

int f(int n) { return n; }

void test()
{
    assert(f({'a'}) == 0x61);
    assert(f({}) == 0);
}

PASS_CASE_MAIN_FUNCTION
