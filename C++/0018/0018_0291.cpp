





#include <memory>
#include <cassert>

struct A;

int main()
{
    std::weak_ptr<A> p;
    assert(p.use_count() == 0);
    static_assert(noexcept(std::weak_ptr<A>()),"");
}
