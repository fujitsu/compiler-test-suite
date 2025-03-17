#include <cassert>
#include <type_traits>

void test1() 
{
    if(auto y = 2)
    {
        assert(y == 2);
        assert(true == (std::is_same<int, decltype(y)>::value));
    }

    if (decltype(auto) x = 1) 
    {
        assert(x == 1);
        assert(true == (std::is_same<int, decltype(x)>::value));
    }

    if(const auto z = 2)
    {
        assert(z == 2);
        assert(true == (std::is_same<const int, decltype(z)>::value));
    }

    if(volatile auto u = 2)
    {
        assert(u == 2);
        assert(true == (std::is_same<volatile int, decltype(u)>::value));
    }
}

void test2()
{
    switch(auto x = 1) 
    {
        default:
            assert(x == 1);
            assert(true == (std::is_same<int, decltype(x)>::value));
    }

    switch(decltype(auto) y = 1)
    {
        default:
        assert(y == 1);
        assert(true == (std::is_same<int, decltype(y)>::value));
    }

    switch(const auto z = 1)
    {
        default:
        assert(z  == 1);
        assert(true == (std::is_same<const int, decltype(z)>::value));
    }

    switch(volatile auto u = 1)
    {
        default:
        assert(u  == 1);
        assert(true == (std::is_same<volatile int, decltype(u)>::value));
    }

}

int main()
{
    test1();
    test2();
}
