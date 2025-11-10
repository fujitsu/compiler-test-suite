#include <atomic>
#include "./004.h"

void test()
{
    {
        std::atomic_flag flag;
        flag.test_and_set();
        
        assert(flag.test_and_set() == true);
        flag.clear();
        assert(flag.test_and_set() == false);
        assert(flag.test_and_set() == true);
        
        flag.clear(std::memory_order_seq_cst);
        assert(flag.test_and_set(std::memory_order_seq_cst) == false);
        assert(flag.test_and_set() == true);
    }
    {
        std::atomic_flag volatile flag;
        flag.test_and_set();
        
        assert(flag.test_and_set() == true);
        flag.clear();
        assert(flag.test_and_set() == false);
        assert(flag.test_and_set() == true);
        
        flag.clear(std::memory_order_seq_cst);
        assert(flag.test_and_set(std::memory_order_seq_cst) == false);
        assert(flag.test_and_set() == true);
    }
}

PASS_CASE_MAIN_FUNCTION
