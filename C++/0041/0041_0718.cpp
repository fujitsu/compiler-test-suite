#include "public3/004.h"

int operator "" _c (const char*,     size_t){return 1;}
int operator "" _u8(const char*,     size_t){return 2;}
int operator "" _L (const wchar_t*,  size_t){return 3;}
int operator "" _u (const char16_t*, size_t){return 4;}
int operator "" _U (const char32_t*, size_t){return 5;}

void test()
{
    assert( "abc"_c == 1);
    assert( u8"\u3042\u3044"_u8 == 2);
    assert( L"\u3042\u3044"_L == 3);
    assert( LR"(\u3042\u3044)"_L == 3);
    assert( u"\u3042\u3044"_u == 4);
    assert( uR"(\u3042\u3044)"_u == 4);
    assert( U"\U00003042\U00003044"_U == 5);
    assert( UR"(\U00003042\U00003044)"_U == 5);
}


PASS_CASE_MAIN_FUNCTION
