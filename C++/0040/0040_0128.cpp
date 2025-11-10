#include "public1/004.h"
#include "public1/005.h"

void test()
{
    int n;
    int* p = &n;
    n.~decltype(0)();
    p->~decltype(n)();
    (0).~decltype(n)();
    (3.14).~decltype(0.0)();
    static_assert((is_same<decltype(n.~decltype(0)()), void>::value == true), "not expected type");
    static_assert((is_same<decltype(p->~decltype(n)()), void>::value == true), "not expected type");
    static_assert((is_same<decltype((0).~decltype(n)()), void>::value == true), "not expected type");
    static_assert((is_same<decltype((3.14).~decltype(0.0)()), void>::value == true), "not expected type");
}

PASS_CASE_MAIN_FUNCTION
