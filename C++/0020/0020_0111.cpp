#include <tuple>
#include <cassert>

void test()
{
    static constexpr int i = 42;
    static constexpr double f = 1.1;
    constexpr std::tuple<const int &, const double &> t = std::tie(i, f);
    static_assert(std::get<0>(t) == 42, "");
    static_assert(std::get<1>(t) == 1.1, "");
}

int main()
{
    test();

    return 0;
}
