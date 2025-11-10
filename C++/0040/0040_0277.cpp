#include "public2/004.h"

int operator "" _c (char){return 1;}
int operator "" _L (wchar_t){return 2;}
int operator "" _u (char16_t){return 3;}
int operator "" _U (char32_t){return 4;}

void test()
{
    assert( 'a'_c == 1);
    assert( L'a'_L == 2);
    assert( u'\u3042'_u == 3);
    assert( U'\U00003042'_U == 4);
}

PASS_CASE_MAIN_FUNCTION
