#include <type_traits>
#include <cassert>

class S;

void test()
{
    static_assert(!std::has_virtual_destructor<void>::value, "");
    static_assert(!std::has_virtual_destructor<int[]>::value, "");
}

int main()
{
    test();

    return 0;
}
