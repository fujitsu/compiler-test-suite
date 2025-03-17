#include <tuple>
#include <cassert>

void test1()
{
    typedef std::tuple<int> T0;
    typedef std::tuple<double> T1;

    constexpr T0 t0(11);
    constexpr T1 t1(t0);

    static_assert(std::get<0>(t1) == 11, "");
}

void test2()
{
    typedef std::tuple<int> T0;
    typedef std::tuple<double> T1;
    constexpr T0 t0(22);
    constexpr T1 t1 = std::move(t0);
    assert(std::get<0>(t1) == 22);
}

int main()
{
    test1();
    test2();

    return 0;
}
