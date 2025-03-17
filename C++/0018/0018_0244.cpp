





#include <memory>
#include <cassert>

int main()
{
    static_assert(noexcept(std::allocator<int>()),"");
    const std::allocator<int> a;
    static_assert(noexcept(std::allocator<int>(a)),"");
}
