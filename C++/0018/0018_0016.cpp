





#include <atomic>
#include <new>
#include <cassert>

int main()
{
    std::atomic_flag f;
    f.clear();
    assert(f.test_and_set() == 0);
}
