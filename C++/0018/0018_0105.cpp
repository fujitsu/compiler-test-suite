



#include <array>

template <class T, std::size_t N>
void test()
{
    {
    typedef std::array<T, N> C;
    static_assert((std::tuple_size<C>::value == N), "");
    }
    {
    typedef std::array<T const, N> C;
    static_assert((std::tuple_size<C>::value == N), "");
    }
    {
    typedef std::array<T volatile, N> C;
    static_assert((std::tuple_size<C>::value == N), "");
    }
    {
    typedef std::array<T const volatile, N> C;
    static_assert((std::tuple_size<C>::value == N), "");
    }
}

int main()
{
    test<double, 0>();
    test<double, 3>();
    test<double, 5>();
}
