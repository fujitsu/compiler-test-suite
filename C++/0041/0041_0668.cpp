#include "public3/004.h"

void test()
{
    int x = 0;
    bool y = (x++, x-- == 1); 
    assert( y );
}

PASS_CASE_MAIN_FUNCTION
