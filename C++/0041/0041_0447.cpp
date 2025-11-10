#include "public3/004.h"

class X
{
    bool value;
public:
    X(bool v) : value(v) {}
    explicit operator bool() { return value; }
};

void test()
{
    X x1(true);
    X x2(false);
    int n = 0;
    
    n = x1 ? 1 : 2;
    assert(n == 1);
    
    n = x2 ? 3 : 4;
    assert(n == 4);
}

PASS_CASE_MAIN_FUNCTION
