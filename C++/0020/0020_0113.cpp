#include <cassert>
#include <tuple>

void test1()
{
    typedef std::tuple<char, int, double> T1;
    typedef std::tuple<double, char, int> T2;
    constexpr T1 t1(1, 2, 3);
    constexpr T2 t2(1.1, 3, 2);
    static_assert(!(t1 == t2), "");
    static_assert(t1 != t2, "");
}

void test2()
{
    typedef std::tuple<char, int, double> T1;
    typedef std::tuple<double, char, int> T2;
    constexpr T1 t1(1, 2, 3);
    constexpr T2 t2(1, 2, 4);
    static_assert((t1 < t2), "");
    static_assert((t1 <= t2), "");
    static_assert(!(t1 > t2), "");
    static_assert(!(t1 >= t2), "");
}

int main()
{
    test1();
    test2();

    return 0;
}
