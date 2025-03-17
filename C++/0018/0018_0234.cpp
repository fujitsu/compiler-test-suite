









#include <memory>
#include <type_traits>

template <class T>
struct A
{
    typedef T value_type;
    typedef std::true_type is_always_equal;
};

template <class T>
struct B
{
    typedef T value_type;
};

template <class T>
struct C
{
    typedef T value_type;
	int not_empty_;  
};

int main()
{
    static_assert((std::is_same<std::allocator_traits<A<char> >::is_always_equal, std::true_type>::value), "");
    static_assert((std::is_same<std::allocator_traits<B<char> >::is_always_equal, std::true_type>::value), "");
    static_assert((std::is_same<std::allocator_traits<C<char> >::is_always_equal, std::false_type>::value), "");

    static_assert((std::is_same<std::allocator_traits<A<const char> >::is_always_equal, std::true_type>::value), "");
    static_assert((std::is_same<std::allocator_traits<B<const char> >::is_always_equal, std::true_type>::value), "");
    static_assert((std::is_same<std::allocator_traits<C<const char> >::is_always_equal, std::false_type>::value), "");
}
