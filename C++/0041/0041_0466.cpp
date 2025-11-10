#include "public3/004.h"

#include "009.h"

#ifdef _CXX11_TEST_LINK_TIME_INSTANTIATION
# warning expected link errors
#endif

void test()
{
    Array<int> ai;
    Array<char> ac;
    sort(ai);
    sort(ac);
    X().sort(ai);
    X().sort(ac);
}

PASS_CASE_MAIN_FUNCTION
