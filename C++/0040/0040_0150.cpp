#include "public2/004.h"

class X
{
public:
    explicit operator bool() { return false; }
};

void test()
{
    X x1;
    for(; X x = x1; ) { assert(false); }
    for(; x1; ) { assert(false); }
    while(X x = x1) { assert(false); }
    while(x1) { assert(false); }
}

PASS_CASE_MAIN_FUNCTION
