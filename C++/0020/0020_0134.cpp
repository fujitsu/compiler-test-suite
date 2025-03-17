#include <type_traits>
#include <cassert>

class S
{
};

void test()
{
    static_assert(std::is_trivial<S>::value, "");
    static_assert(!std::is_trivial<void>::value, "");
}

int main()
{
    test();

    return 0;
}
