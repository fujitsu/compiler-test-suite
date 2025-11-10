#include <atomic>
#include "./004.h"

void test()
{
    {
        std::atomic_flag flag;
        std::atomic_flag_test_and_set(&flag);

        assert(std::atomic_flag_test_and_set(&flag) == true);
        
        std::atomic_flag_clear(&flag);
        assert(std::atomic_flag_test_and_set(&flag) == false);
        
        assert(std::atomic_flag_test_and_set_explicit(&flag, std::memory_order_seq_cst) == true);
        
        std::atomic_flag_clear_explicit(&flag, std::memory_order_seq_cst);
        assert(std::atomic_flag_test_and_set(&flag) == false);
    }
    {
        std::atomic_flag volatile flag;
        std::atomic_flag_test_and_set(&flag);

        assert(std::atomic_flag_test_and_set(&flag) == true);
        
        std::atomic_flag_clear(&flag);
        assert(std::atomic_flag_test_and_set(&flag) == false);
        
        assert(std::atomic_flag_test_and_set_explicit(&flag, std::memory_order_seq_cst) == true);
        
        std::atomic_flag_clear_explicit(&flag, std::memory_order_seq_cst);
        assert(std::atomic_flag_test_and_set(&flag) == false);
    }
}

PASS_CASE_MAIN_FUNCTION
