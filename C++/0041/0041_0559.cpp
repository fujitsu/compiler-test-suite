#include "public3/004.h"

void test()
{
    typedef int (fun_type)(int);
    fun_type *pf = [](int x){ return x * 2; };
    assert(pf(1) == 2);
}

PASS_CASE_MAIN_FUNCTION
