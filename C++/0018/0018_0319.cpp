





#include <mutex>
#include <cassert>

std::mutex m;

int main()
{
    std::unique_lock<std::mutex> lk0;
    assert(lk0.mutex() == nullptr);
    static_assert(noexcept(lk0.mutex()),"");
    std::unique_lock<std::mutex> lk1(m);
    assert(lk1.mutex() == &m);
    lk1.unlock();
    assert(lk1.mutex() == &m);
}
