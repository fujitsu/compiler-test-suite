#include <type_traits>
#include <cassert>

class S;

void test()
{
    static_assert(!std::is_empty<int[]>::value, "");
    static_assert(!std::is_empty<void>::value, "");
}

int main()
{
    test();

    return 0;
}
