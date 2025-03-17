





#include <future>
#include <cassert>

struct A {};

int main()
{
    std::packaged_task<A(int, char)> p;
    static_assert(noexcept(std::packaged_task<A(int, char)>()),"");
    static_assert(noexcept(p.valid()),"");
    assert(!p.valid());
}
