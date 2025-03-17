





#include <mutex>
#include <cassert>

int main()
{
    std::mutex m;
    static_assert(noexcept(std::unique_lock<std::mutex>(m, std::defer_lock)),"");
    std::unique_lock<std::mutex> lk(m, std::defer_lock);
    assert(lk.mutex() == &m);
    assert(lk.owns_lock() == false);
}
