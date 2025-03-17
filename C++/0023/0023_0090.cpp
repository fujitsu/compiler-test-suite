#include <cassert>
#include <type_traits>

void test()
{
    for(auto i = 1;i<2;i++)
    {
        assert(true == (std::is_same<int, decltype(i)>::value));
    }

    for(decltype(auto) i = 1;i<2;i++)
    {
        assert(true == (std::is_same<int, decltype(i)>::value));
    }

    for(volatile auto i = 1;i<2;i++)
    {
        assert(true == (std::is_same<volatile int, decltype(i)>::value));
    }
}

int main()
{
    test();
}
