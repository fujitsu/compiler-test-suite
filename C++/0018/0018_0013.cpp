






#include <atomic>
#include <cassert>

int main()
{
    {
        std::atomic_flag f;
        f.clear();
        static_assert(noexcept(atomic_flag_test_and_set(&f)),"");
        assert(atomic_flag_test_and_set(&f) == 0);
        assert(f.test_and_set() == 1);
    }
    {
        volatile std::atomic_flag f;
        f.clear();
        static_assert(noexcept(atomic_flag_test_and_set(&f)),"");
        assert(atomic_flag_test_and_set(&f) == 0);
        assert(f.test_and_set() == 1);
    }
}
