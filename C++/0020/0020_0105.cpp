#include <tuple>
#include <cassert>
#include <typeinfo>
#include <iostream>

void test()
{
    std::tuple<int> ti(8);
    int n = std::get<int>(ti);
    assert(n == 8);
    static_assert(std::is_lvalue_reference<decltype(std::get<int>(ti))>::value, "");
}

int main()
{
    test();

    return 0;
}
