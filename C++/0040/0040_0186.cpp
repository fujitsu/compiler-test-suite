#include "public2/004.h"

struct X
{
    X& operator= (X&&) = default;
    X& operator= (const X&&) {return *this;}
    X& operator= (volatile X&&){return *this;}
    X& operator= (const volatile X&&){return *this;}
};

void test()
{   
    X x1,x2;
    x1 = static_cast<X&&>(x2);
    x1 = static_cast<const X&&>(x2);
    x1 = static_cast<volatile X&&>(x2);
    x1 = static_cast<const volatile X&&>(x2);
}

PASS_CASE_MAIN_FUNCTION
