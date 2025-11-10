#include "public3/004.h"

void test()
{
    auto x1 = []{};
    x1.~decltype(x1)(); 
}

PASS_CASE_MAIN_FUNCTION
