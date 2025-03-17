#include <type_traits>
#include <cassert>

void test()
{
    static_assert(std::is_pod<int[]>::value, "");
}

int main()
{
    test();

    return 0;
}
