#include <type_traits>
#include <cassert>

class A;

void test()
{
    static_assert(!std::is_polymorphic<void>::value, "");
}

int main()
{
    test();

    return 0;
}
