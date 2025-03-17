



#include <memory>
#include <cassert>

int main()
{
    std::pointer_safety r = std::get_pointer_safety();
    assert(r == std::pointer_safety::relaxed ||
           r == std::pointer_safety::preferred ||
           r == std::pointer_safety::strict);
    static_assert(noexcept(std::get_pointer_safety()),"");
}
