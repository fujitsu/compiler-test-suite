#include <cassert>
#include <type_traits>

void test()
{
    auto x = 1;
    decltype(auto) y = 2;
    assert(true == (std::is_same<int, decltype(x)>::value));
    assert(true == (std::is_same<int, decltype(y)>::value));

    const auto *v = &x, u = 6;
    volatile auto *a = &x, b = 6;
    assert(true == (std::is_same<const int*, decltype(v)>::value));
    assert(true == (std::is_same<const int, decltype(u)>::value));

    assert(true == (std::is_same<volatile int*, decltype(a)>::value));
    assert(true == (std::is_same<volatile int, decltype(b)>::value));
}

int main()
{
    test();
}
