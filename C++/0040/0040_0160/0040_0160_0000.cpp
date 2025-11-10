#include "../public1/004.h"

#include "010.hpp"


void test()
{
    A<X> ax;
    A<Y> ay;

    foo<X>(0);
    foo<Y>(0);

    B().foo<X>(0);
    B().foo<Y>(0);

    C::inner<X> cix;
    C::inner<Y> ciy;

    D<X>().foo(0);
    D<Y>().foo(0);

    E<X>::inner exi;
    E<Y>::inner eyi;

    F<X>::data++;
    F<Y>::data++;
}

PASS_CASE_MAIN_FUNCTION
