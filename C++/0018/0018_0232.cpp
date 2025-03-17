








#include <memory>
#include <type_traits>

template <class T>
struct A
{
    typedef T value_type;
};

int main()
{
    static_assert((std::is_same<std::allocator_traits<A<char> >::allocator_type, A<char> >::value), "");
}
