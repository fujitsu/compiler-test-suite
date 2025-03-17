





#include <thread>
#include <cassert>

int main()
{
    std::thread::id id;
    assert(id == std::thread::id());
    static_assert(noexcept(std::thread::id()),"");
}
