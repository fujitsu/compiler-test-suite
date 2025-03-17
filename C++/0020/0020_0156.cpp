#include <utility>
#include <cassert>
void test()
{
    typedef std::pair<int, short> P1;
    constexpr P1 p1 = std::make_pair(3, 4);
    static_assert(p1.first == 3, "");
    static_assert(p1.second == 4, "");
}

int main()
{
    test();

    return 0;
}
