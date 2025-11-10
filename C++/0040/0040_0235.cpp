#include "public2/004.h"

void test()
{
    int n = 0;
    int x = n++; 
    assert( x == 0 );
    assert( n == 1 );
    int y = n--; 
    assert( y == 1 );
    assert( n == 0 );
}

PASS_CASE_MAIN_FUNCTION
