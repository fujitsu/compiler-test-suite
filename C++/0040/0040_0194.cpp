#include "public2/004.h"
#include <stdlib.h>
#include <exception>

void f() noexcept(true) { throw 1; }

void my_terminate() noexcept
{
    exit(0);
}

void test()
{
    std::set_terminate(my_terminate);
    f(); 
    assert(0);
}

PASS_CASE_MAIN_FUNCTION
