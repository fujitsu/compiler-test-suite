#include <type_traits>
#include <cassert>

class S;

void test()
{
    static_assert(!std::is_empty<S[]>::value, "");
}

int main()
{
    test();

    return 0;
}
