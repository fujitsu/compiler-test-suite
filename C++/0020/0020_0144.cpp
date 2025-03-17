#include <utility>
#include <cassert>

void test()
{
    typedef std::pair<int, short> TP;
    static_assert((std::tuple_size<TP>::value == 2), "");
    static_assert(std::is_base_of<std::integral_constant<std::size_t, 2>, std::tuple_size<std::pair<int, short>>>::value, "");
}

int main()
{
    test();

    return 0;
}
