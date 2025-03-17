#include <tuple>
#include <cassert>

void test()
{
    std::integral_constant<int, 2> ic;
    static_assert(noexcept(ic() == 2), "");
    static_assert(ic() == 2, "");
}

int main()
{
    test();

    return 0;
}
