#include "public3/004.h"

void test()
{
    int a = 1, b = 1, c = 1;
    auto m1 = [a, &b, &c]() mutable {
        auto m2 = [a, b, &c]() mutable {
            assert(a == 1);
            assert(b == 2);
            assert(c == 3);
            a = 4; b = 4; c = 4;
        };
        a = 3; b = 3; c = 3;
        m2();
    };
    a = 2; b = 2; c = 2;
    m1();
    assert(a == 2);
    assert(b == 3);
    assert(c == 4);
}

PASS_CASE_MAIN_FUNCTION
