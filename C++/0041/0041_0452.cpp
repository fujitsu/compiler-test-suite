#include "public3/004.h"

class X
{
public:
    X(bool v) : value(v) {}
    explicit operator bool() { return value;}
    bool value;
};

void test()
{
    X x1(true);
    X x2(false);
    bool b = false;
    b = (!x1);
    assert(!b);
    b = (!x2);
    assert(b);
}

PASS_CASE_MAIN_FUNCTION
