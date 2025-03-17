#include <utility>
#include <cassert>

void test()
{
    typedef std::pair<int, short> P;
    constexpr P p1(3, 4);
    constexpr P p2(3, 2);
    static_assert(!(p1 == p2), "");
    static_assert(!(p1 < p2), "");
    static_assert((p1 != p2), "");
    static_assert((p1 > p2), "");
    static_assert((p1 >= p2), "");
    static_assert(!(p1 <= p2), "");
}

int main()
{
    test();

    return 0;
}
