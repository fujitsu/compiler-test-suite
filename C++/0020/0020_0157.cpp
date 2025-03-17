#include <utility>
#include <cassert>

void test1()
{
    constexpr int i = 1;
    constexpr int j = 2;
    static_assert(std::pair<int, int>(i, j).first == 1, "");
}

void test2()
{
    static_assert(std::pair<int, int>(1, 2).first == 1, "");
    static_assert(std::pair<int, int>(1, 2).second == 2, "");
}

void test3()
{
    typedef std::pair<int, short> P1;
    constexpr P1 p1(3, 4);
    constexpr std::pair<double, int> p2 = p1;
    static_assert(p2.first == 3, "");
    static_assert(p2.second == 4, "");
}

void test4()
{
    constexpr std::pair<double, int> p2(std::pair<int, short>(3, 4));
    static_assert(p2.first == 3, "");
    static_assert(p2.second == 4, "");
}

int main()
{
    test1();
    test2();
    test3();
    test4();

    return 0;
}
