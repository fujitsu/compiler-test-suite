#include "public3/004.h"

enum E1: char      { X, Y = 2 };
enum class E2: int { X, Y = 256 };

void foo1(E1) {}
void foo2(E2) {}

template <class T>
T get() { return T(); }

void test()
{
    foo1(static_cast<E1>(E2::Y));
    foo2(static_cast<E2>(E1::Y));

    foo1(static_cast<E1>(get<bool                  >()));
    foo1(static_cast<E1>(get<char                  >()));
#ifdef _HAS_CXX11_UNICODE_CHARS
    foo1(static_cast<E1>(get<char16_t              >()));
    foo1(static_cast<E1>(get<char32_t              >()));
#endif
    foo1(static_cast<E1>(get<wchar_t               >()));
    foo1(static_cast<E1>(get<signed char           >()));
    foo1(static_cast<E1>(get<short int             >()));
    foo1(static_cast<E1>(get<int                   >()));
    foo1(static_cast<E1>(get<long int              >()));
    foo1(static_cast<E1>(get<long long int         >()));
    foo1(static_cast<E1>(get<unsigned char         >()));
    foo1(static_cast<E1>(get<unsigned short int    >()));
    foo1(static_cast<E1>(get<unsigned int          >()));
    foo1(static_cast<E1>(get<unsigned long int     >()));
    foo1(static_cast<E1>(get<unsigned long long int>()));
    foo1(static_cast<E1>(get<float                 >()));
    foo1(static_cast<E1>(get<double                >()));
    foo1(static_cast<E1>(get<long double           >()));

    foo2(static_cast<E2>(get<bool                  >()));
    foo2(static_cast<E2>(get<char                  >()));
#ifdef _HAS_CXX11_UNICODE_CHARS
    foo2(static_cast<E2>(get<char16_t              >()));
    foo2(static_cast<E2>(get<char32_t              >()));
#endif
    foo2(static_cast<E2>(get<wchar_t               >()));
    foo2(static_cast<E2>(get<signed char           >()));
    foo2(static_cast<E2>(get<short int             >()));
    foo2(static_cast<E2>(get<int                   >()));
    foo2(static_cast<E2>(get<long int              >()));
    foo2(static_cast<E2>(get<long long int         >()));
    foo2(static_cast<E2>(get<unsigned char         >()));
    foo2(static_cast<E2>(get<unsigned short int    >()));
    foo2(static_cast<E2>(get<unsigned int          >()));
    foo2(static_cast<E2>(get<unsigned long int     >()));
    foo2(static_cast<E2>(get<unsigned long long int>()));
    foo2(static_cast<E2>(get<float                 >()));
    foo2(static_cast<E2>(get<double                >()));
    foo2(static_cast<E2>(get<long double           >()));
}

PASS_CASE_MAIN_FUNCTION
