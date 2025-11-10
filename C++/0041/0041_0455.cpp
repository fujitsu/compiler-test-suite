#include "public3/004.h"

class X
{
public:
    explicit operator bool() { return false; }
};

void test()
{
    X x;
    do {} while(x);
}

PASS_CASE_MAIN_FUNCTION
