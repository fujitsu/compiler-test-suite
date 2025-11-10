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
    
    if (X x = x1)
        assert(true);
    else
        assert(false);
        
    if (X x = {x2})
        assert(false);
    else
        assert(true);
    
    if (x1)
        assert(true);
    else
        assert(false);
    
    if(x2)
        assert(false);
    else
        assert(true);
}

PASS_CASE_MAIN_FUNCTION
