#include <atomic>
#include "./004.h"

void test()
{
    std::atomic_signal_fence(std::memory_order_seq_cst);
}

PASS_CASE_MAIN_FUNCTION
