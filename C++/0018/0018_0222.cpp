








#include <memory>
#include <type_traits>

template <class T>
struct A
{
};

template <class T> struct B1 {};

template <class T>
struct B
{
    template <class U> using rebind = B1<U>;
};

template <class T, class U>
struct C
{
};

template <class T, class U> struct D1 {};

template <class T, class U>
struct D
{
    template <class V> using rebind = D1<V, U>;
};

int main()
{
    static_assert((std::is_same<std::pointer_traits<A<int*> >::rebind<double*>, A<double*> >::value), "");
    static_assert((std::is_same<std::pointer_traits<B<int> >::rebind<double>, B1<double> >::value), "");
    static_assert((std::is_same<std::pointer_traits<C<char, int> >::rebind<double>, C<double, int> >::value), "");
    static_assert((std::is_same<std::pointer_traits<D<char, int> >::rebind<double>, D1<double, int> >::value), "");
}
