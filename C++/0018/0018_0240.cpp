








#include <memory>
#include <type_traits>

template <class T>
struct A
{
    typedef T value_type;
    typedef unsigned short size_type;
};

template <class T>
struct B
{
    typedef T value_type;
};


int main()
{
    static_assert((std::is_same<std::allocator_traits<A<char> >::size_type, unsigned short>::value), "");
    static_assert((std::is_same<std::allocator_traits<B<char> >::size_type,
                   std::make_unsigned<std::ptrdiff_t>::type>::value), "");
}
