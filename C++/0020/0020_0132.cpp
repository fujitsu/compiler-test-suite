#include <type_traits>
#include <cassert>

class S
{
};

void test()
{
    static_assert(std::is_standard_layout<S>::value, "");
    static_assert(!std::is_standard_layout<void>::value, "");
}

int main()
{
    test();

    return 0;
}
