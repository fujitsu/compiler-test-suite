









#include <memory>
#include <type_traits>

template <class T>
struct A
{
    typedef T value_type;
    typedef std::true_type propagate_on_container_copy_assignment;
};

template <class T>
struct B
{
    typedef T value_type;
};

int main()
{
    static_assert((std::is_same<std::allocator_traits<A<char> >::propagate_on_container_copy_assignment, std::true_type>::value), "");
    static_assert((std::is_same<std::allocator_traits<B<char> >::propagate_on_container_copy_assignment, std::false_type>::value), "");
}
