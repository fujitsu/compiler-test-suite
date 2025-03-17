#include <tuple>
#include <cassert>

void test()
{
    constexpr int m = 2;
    constexpr std::tuple<double> t(std::move(m));
    static_assert(std::get<0>(t) == 2, "");
}

int main()
{
    test();

    return 0;
}
