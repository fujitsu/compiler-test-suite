





#include <atomic>
#include <cassert>

int main()
{
    std::atomic_flag f = ATOMIC_FLAG_INIT;
    assert(f.test_and_set() == 0);
}
