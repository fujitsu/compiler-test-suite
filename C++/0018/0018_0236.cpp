








#include <memory>
#include <type_traits>

template <class T>
struct Ptr {};

template <class T>
struct A
{
    typedef T value_type;
    typedef Ptr<T> pointer;
};

template <class T>
struct B
{
    typedef T value_type;
};

int main()
{
    static_assert((std::is_same<std::allocator_traits<A<char> >::pointer, Ptr<char> >::value), "");
    static_assert((std::is_same<std::allocator_traits<B<char> >::pointer, char*>::value), "");
}
