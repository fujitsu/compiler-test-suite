#include <utility>
#include <cassert>

void test1()
{
    typedef std::pair<int, short> P;
    P p(3, 4);
    int r = std::get<int, short>(p);
    assert(r == 3);
}

void test2()
{
    typedef std::pair<int, short> P;
    constexpr P p(3, 4);
    constexpr int r = std::get<int, short>(p);
    static_assert(r == 3, "");
}

void test3()
{
    typedef std::pair<int, short> P;
    constexpr P p(3, 4);
    constexpr int n = std::get<int, short>(std::move(p));
    static_assert(n == 3, "");
}

void test4()
{
    typedef std::pair<int, short> P;
    constexpr P p(3, 4);
    constexpr int n = std::get<short, int>(p);
    static_assert(n == 4, "");
}

void test5()
{
    typedef std::pair<int, short> P;
    P p(3, 4);
    int r = std::get<short, int>(p);
    assert(r == 4);
}

void test6()
{
    typedef std::pair<int, short> P;
    constexpr P p(3, 4);
    constexpr int r = std::get<short, int>(p);
    static_assert(r == 4, "");
}

int main()
{
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();

    return 0;
}
