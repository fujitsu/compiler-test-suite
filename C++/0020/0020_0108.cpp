#include <tuple>
#include <cassert>

void test()
{
    constexpr std::tuple<int> t1(1);
    constexpr std::tuple<char> t2('a');
    static_assert(std::get<0>(std::tuple_cat(t1, t2)) == 1, "");
    static_assert(std::get<1>(std::tuple_cat(t1, t2)) == 'a', "");
}

int main()
{
    test();

    return 0;
}
