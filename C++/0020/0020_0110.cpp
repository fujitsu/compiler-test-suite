#include <tuple>
#include <cassert>

void test()
{
    constexpr auto t1 = std::make_tuple(0, 1, 3.14);
    constexpr int i1 = std::get<1>(t1);
    constexpr double d1 = std::get<2>(t1);
    static_assert(i1 == 1, "");
    static_assert(d1 == 3.14, "");
}

int main()
{
    test();

    return 0;
}
