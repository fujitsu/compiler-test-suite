#include <cassert>
#include <type_traits>

void test1() 
{
    while (decltype(auto) i = 1) 
    { 
        assert(true == (std::is_same<int, decltype(i)>::value));
        break;
    }

    while (auto j = 1)
    {
        assert(true == (std::is_same<int, decltype(j)>::value));
        break;
    }

    while (const auto k = 1)
    {
        assert(true == (std::is_same<const int, decltype(k)>::value));
        break;
    }

    while (volatile auto m = 1)
    {
        assert(true == (std::is_same<volatile int, decltype(m)>::value));
        break;
    }

}

int main()
{
    test1();
}
