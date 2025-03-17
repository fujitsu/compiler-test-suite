





#include <mutex>
#include <cassert>

std::mutex m;

int main()
{
    std::unique_lock<std::mutex> lk0;
    assert(lk0.owns_lock() == false);
    static_assert(noexcept(lk0.owns_lock()),"");
    std::unique_lock<std::mutex> lk1(m);
    assert(lk1.owns_lock() == true);
    lk1.unlock();
    assert(lk1.owns_lock() == false);
}
