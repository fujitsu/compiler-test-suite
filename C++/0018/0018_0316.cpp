#include <mutex>
#include <cassert>

int main()
{
    std::mutex m;
    m.lock();

#if !defined _LIBCPP_VERSION > 3700
    static_assert(noexcept(std::unique_lock<std::mutex>(m, std::adopt_lock)),"");
#endif
    std::unique_lock<std::mutex> lk(m, std::adopt_lock);
    assert(lk.mutex() == &m);
    assert(lk.owns_lock() == true);
}
