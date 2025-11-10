#include <atomic>
#include "./004.h"

void test()
{
    assert(std::memory_order_relaxed == 0);
    assert(std::memory_order_consume == 1);
    assert(std::memory_order_acquire == 2);
    assert(std::memory_order_release == 3);
    assert(std::memory_order_acq_rel == 4);
    assert(std::memory_order_seq_cst == 5);
    std::memory_order seq_cst = std::memory_order_seq_cst;
    assert(seq_cst == 5);
}

PASS_CASE_MAIN_FUNCTION
