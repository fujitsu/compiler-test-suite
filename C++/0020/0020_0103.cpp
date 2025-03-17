#include <tuple>
#include <cassert>

void test1()
{
    typedef std::pair<double, char> P0;
    typedef std::tuple<int, short> T1;
    constexpr P0 p0(2.5, 'a');
    constexpr T1 t1 = p0;
    static_assert(std::get<0>(t1) != std::get<0>(p0), "");
    static_assert(std::get<1>(t1) == std::get<1>(p0), "");
    static_assert(std::get<0>(t1) == 2, "");
    static_assert(std::get<1>(t1) == short('a'), "");
}

void test2()
{
    typedef std::pair<double, char> P0;
    typedef std::tuple<int, short> T1;
    constexpr P0 p0(2.5, 'a');
    constexpr T1 t1(std::move(p0));
    static_assert(std::get<0>(t1) != std::get<0>(p0), "");
    static_assert(std::get<1>(t1) == std::get<1>(p0), "");
    static_assert(std::get<0>(t1) == 2, "");
    static_assert(std::get<1>(t1) == short('a'), "");
}

int main()
{
    test1();
    test2();

    return 0;
}
