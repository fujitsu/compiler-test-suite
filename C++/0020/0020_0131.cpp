#include <type_traits>
#include <cassert>

class A;

void test()
{
    static_assert(!std::is_polymorphic<int[]>::value, "");
}

int main()
{
    test();

    return 0;
}
