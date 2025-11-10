#include "public3/004.h"

enum class E: int { X, Y = 256 };

template <class T>
void foo(T) {}

void test()
{
    foo(static_cast<bool                  >(E::Y));
    foo(static_cast<char                  >(E::Y));
#ifdef _HAS_CXX11_UNICODE_CHARS
    foo(static_cast<char16_t              >(E::Y));
    foo(static_cast<char32_t              >(E::Y));
#endif
    foo(static_cast<wchar_t               >(E::Y));
    foo(static_cast<signed char           >(E::Y));
    foo(static_cast<short int             >(E::Y));
    foo(static_cast<int                   >(E::Y));
    foo(static_cast<long int              >(E::Y));
    foo(static_cast<long long int         >(E::Y));
    foo(static_cast<unsigned char         >(E::Y));
    foo(static_cast<unsigned short int    >(E::Y));
    foo(static_cast<unsigned int          >(E::Y));
    foo(static_cast<unsigned long int     >(E::Y));
    foo(static_cast<unsigned long long int>(E::Y));

    foo(static_cast<float                 >(E::Y));
    foo(static_cast<double                >(E::Y));
    foo(static_cast<long double           >(E::Y));
}

PASS_CASE_MAIN_FUNCTION
