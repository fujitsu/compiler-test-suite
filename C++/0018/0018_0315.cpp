





#include <mutex>
#include <cassert>

std::mutex m;

int main()
{
    std::unique_lock<std::mutex> lk0(m);
    std::unique_lock<std::mutex> lk = std::move(lk0);
    static_assert(noexcept(lk = std::move(lk0)),"");
    assert(lk.mutex() == &m);
    assert(lk.owns_lock() == true);
    assert(lk0.mutex() == nullptr);
    assert(lk0.owns_lock() == false);
}
