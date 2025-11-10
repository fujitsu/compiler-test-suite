#include <atomic>
#include "./004.h"

void test()
{
    assert(std::kill_dependency(5) == 5);
    assert(std::kill_dependency(-5.5) == -5.5);
}

PASS_CASE_MAIN_FUNCTION
