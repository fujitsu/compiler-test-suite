#include "public3/004.h"

void test()
{
    int n = 2;
    bool b1 = ( n-- == 2 ? n-- == 1 : false ); 
    bool b2 = ( n++ == 1 ? false : n++ == 1 ); 
    assert( b1 );
    assert( b2 );
}

PASS_CASE_MAIN_FUNCTION
