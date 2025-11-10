#include "public1/004.h"
#include "public1/005.h"


auto x1 = 1;
const auto& x2 = 2;
static volatile auto&& x3 = 3;
static const volatile auto* px1 = &x1;
static_assert((is_same<decltype(x1), int>::value == true), "error");
static_assert((is_same<decltype(x2), const int&>::value == true), "error");
static_assert((is_same<decltype(x3), volatile int&&>::value == true), "error");
static_assert((is_same<decltype(px1), const volatile int*>::value == true), "error");


namespace ns_test
{
    auto x1 = 1;
    const auto& x2 = 2;
    static volatile auto&& x3 = 3;
    static const volatile auto* px1 = &x1;
    static_assert((is_same<decltype(x1), int>::value == true), "error");
    static_assert((is_same<decltype(x2), const int&>::value == true), "error");
    static_assert((is_same<decltype(x3), volatile int&&>::value == true), "error");
    static_assert((is_same<decltype(px1), const volatile int*>::value == true), "error");
}

int foo(double) { return 0; }


void test()
{
    auto x = 1,
         &rx = x,
         *px = &x,
         &&rrx = 2,
         (*pf)(double) = foo;
    static_assert((is_same<decltype(x), int>::value == true), "error");
    static_assert((is_same<decltype(rx), int&>::value == true), "error");
    static_assert((is_same<decltype(px), int*>::value == true), "error");
    static_assert((is_same<decltype(rrx), int&&>::value == true), "error");
    static_assert((is_same<decltype(pf), int(*)(double)>::value == true), "error");
}

PASS_CASE_MAIN_FUNCTION
