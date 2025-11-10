#include "public2/004.h"

class X {};

template <char...>
X operator "" _x() { return X(); }

void test()
{
    X x = 1234567890_x;
    (void)x;
}

PASS_CASE_MAIN_FUNCTION
