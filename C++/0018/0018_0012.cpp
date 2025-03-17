






#include <atomic>
#include <cassert>

int main()
{
    {
        std::atomic_flag f(false);
        f.test_and_set();
        atomic_flag_clear(&f);
        static_assert(noexcept(atomic_flag_clear(&f)),"");
        assert(f.test_and_set() == 0);
    }
    {
        volatile std::atomic_flag f(false);
        f.test_and_set();
        atomic_flag_clear(&f);
        static_assert(noexcept(atomic_flag_clear(&f)),"");
        assert(f.test_and_set() == 0);
    }
}
