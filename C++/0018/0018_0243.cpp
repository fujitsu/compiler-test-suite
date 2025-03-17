#include <memory>
#include <cassert>

int main()
{
    struct A {};
    std::allocator<A> a;
    A* ap = a.allocate(3);

#if !defined _LIBCPP_VERSION > 3700
    static_assert(!noexcept(a.deallocate(ap, 3)),"");
#endif
}
