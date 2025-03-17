








#include <memory>
#include <cassert>

int main()
{
    {
        int i = 0;
        int* a = std::pointer_traits<int*>::pointer_to(i);
        static_assert(noexcept(std::pointer_traits<int*>::pointer_to(i)),"");
        assert(a == &i);
    }
    {
        (std::pointer_traits<void*>::element_type)0;
    }
}
