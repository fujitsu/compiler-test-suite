#include "../public1/004.h"

#include "012.hpp"


using namespace ns_test;

A<int> ai;
C::inner<int> c_ii;
E<int>::inner ei_i;

void test()
{
    f<int>();
    B().f<int>();
    D<int>().f();
    F<int>::data++;
}

PASS_CASE_MAIN_FUNCTION
