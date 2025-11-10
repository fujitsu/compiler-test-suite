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
    bool b = false;
    
    b = (x1 && 1);
    assert(b);
    
    b = (1 && x1);
    assert(b);
    
    b = (x2 && 1);
    assert(!b);
    
    b = (1 && x2);
    assert(!b);
}

PASS_CASE_MAIN_FUNCTION
