





#include <mutex>
#include <cassert>

int main()
{
    std::unique_lock<std::mutex> ul;
    static_assert(noexcept(std::unique_lock<std::mutex>()),"");
    assert(!ul.owns_lock());
    assert(ul.mutex() == nullptr);
}
