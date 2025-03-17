





#include <mutex>
#include <cassert>

std::mutex m;

int main()
{
    std::unique_lock<std::mutex> lk0;
    assert(static_cast<bool>(lk0) == false);
    static_assert(noexcept(static_cast<bool>(lk0)),"");
    std::unique_lock<std::mutex> lk1(m);
    assert(static_cast<bool>(lk1) == true);
    lk1.unlock();
    assert(static_cast<bool>(lk1) == false);
}
