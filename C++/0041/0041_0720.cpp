#include "public3/004.h"
#include "public3/006.h"

int operator "" _LX(const wchar_t  *, std::size_t){return 1;}
int operator "" _LY(const wchar_t  *, std::size_t){return 1;}
int operator "" _u8x(const char    *, std::size_t){return 2;}
int operator "" _u8y(const char    *, std::size_t){return 2;}
int operator "" _ux(const char16_t *, std::size_t){return 3;}
int operator "" _uy(const char16_t *, std::size_t){return 3;}
int operator "" _UX(const char32_t *, std::size_t){return 4;}
int operator "" _UY(const char32_t *, std::size_t){return 4;}
int operator "" _x(const char *, std::size_t){return 5;}
int operator "" _y(const char *, std::size_t){return 5;}

void test()
{
    assert(L"A" "B" "C"_LX == L"ABC"_LX );
    assert("A" L"B" "C"_LY == L"ABC"_LY );
    assert(u8"\u3042\u3044"_u8x "A" "B" == u8"\u3042\u3044AB"_u8x);
    assert(u8"\u3042\u3044"_u8y "A" u8"B" == u8"\u3042\u3044AB"_u8y);
    assert("A" u"\u3042\u3044"_ux "B" == u"A\u3042\u3044B"_ux );
    assert("A" u"B" u"\u3042\u3044"_uy  == u"AB\u3042\u3044"_uy );
    assert(U"\U00003042\U00003044"_UX "A" "B" == U"\U00003042\U00003044AB"_UX );
    assert(U"\U00003042\U00003044"_UY U"A" "B" == U"\U00003042\U00003044AB"_UY );
    assert("A" "abc"_x "B" == "AabcB"_x );
    assert("A" "abc"_y "B" == "AabcB"_y );
}

PASS_CASE_MAIN_FUNCTION
