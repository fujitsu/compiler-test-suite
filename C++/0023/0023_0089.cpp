#include <cassert>
#include <type_traits>

namespace __NS__ 
{
    auto x = 1;
    decltype(auto) y = 2;

    const auto z = 3;
    volatile auto u = 4;

    void func_2() 
    {
        assert(true == (std::is_same<int, decltype(x)>::value));
        assert(true == (std::is_same<int, decltype(y)>::value));

        assert(true == (std::is_same<const int, decltype(z)>::value));
        assert(true == (std::is_same<volatile int , decltype(u)>::value));
    }
}

int main()
{
    __NS__::func_2();
}
