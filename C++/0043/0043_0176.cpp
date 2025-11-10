#include <atomic>
#include "./004.h"

void test()
{
    std::atomic_flag flag = ATOMIC_FLAG_INIT;
    assert(std::atomic_flag_test_and_set(&flag) == false);
}

PASS_CASE_MAIN_FUNCTION
