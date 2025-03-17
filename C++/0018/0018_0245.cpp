











#include <memory>
#include <cassert>

int main()
{
    std::allocator<int> a1;
    std::allocator<int> a2;
    assert(a1 == a2);
    static_assert(noexcept(a1 == a2),"");
    assert(!(a1 != a2));
    static_assert(noexcept(a1 != a2),"");
}
