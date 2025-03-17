#include <cassert>
#include <tuple>

void test1()
{
    constexpr std::tuple<int, double, long> t = std::make_tuple(1, 2.0, 3L);
    static_assert(std::get<0>(t) == 1, "");
    static_assert(std::get<1>(t) == 2.0, "");
    static_assert(std::get<2>(t) == 3, "");
}

void test2()
{
    typedef std::tuple<double, int> T;
    constexpr T t(2.718, 5);
    static_assert(std::get<0>(std::move(t)) == 2.718, "");
    static_assert(std::get<1>(std::move(t)) == 5, "");
}

int main()
{
    test1();
    test2();

    return 0;
}
