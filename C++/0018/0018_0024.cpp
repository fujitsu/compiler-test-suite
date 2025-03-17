









#include <bitset>
#include <cassert>
#include <type_traits>

template <std::size_t N>
void
test()
{
    typedef std::bitset<N> T;
    typedef std::hash<T> H;
    static_assert((std::is_same<typename H::argument_type, T>::value), "" );
    static_assert((std::is_same<typename H::result_type, std::size_t>::value), "" );
    H h;
    T bs(static_cast<unsigned long long>(N));
}

int main()
{
    test<0>();
    test<10>();
    test<100>();
    test<1000>();
}
