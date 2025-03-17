#include <cassert>
#include <tuple>

void test()
{
    const std::tuple<int, double> ti(8, 8.8);
    int n = std::get<int>(ti);
    assert(n == 8);
    assert(std::is_lvalue_reference<decltype(std::get<int>(ti))>::value);
}

int main()
{
    test();

    return 0;
}
