#include "./004.h"

void f() noexcept(false) { throw 1; }

void test()
{
    try
    {
        f();
    }
    catch (int)
    {
        return;
    }
    assert(0);
}

PASS_CASE_MAIN_FUNCTION
