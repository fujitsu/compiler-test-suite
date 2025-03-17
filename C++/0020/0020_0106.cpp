#include <tuple>
#include <cassert>

void test()
{
    constexpr std::tuple<int, double> ti(8, 8.8);
    constexpr int n = std::get<int>(std::move(ti));
    assert(n == 8);
    static_assert(std::is_rvalue_reference<decltype(std::get<int>(std::move(ti)))>::value, "");
}

int main()
{
    test();

    return 0;
}
