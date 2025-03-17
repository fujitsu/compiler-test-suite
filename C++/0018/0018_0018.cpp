





#include <atomic>
#include <cassert>

int main()
{
    std::atomic_flag f(false);
    assert(f.test_and_set() == 0);
}
