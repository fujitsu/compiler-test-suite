





#include <thread>
#include <cassert>

int main()
{
    std::thread t;
    assert(t.get_id() == std::thread::id());
    static_assert(noexcept(std::thread()),"");
}
