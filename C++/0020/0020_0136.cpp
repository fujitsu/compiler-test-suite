#include <type_traits>
#include <cassert>

class S
{
};

void test()
{
    static_assert(std::is_trivially_copyable<S>::value, "");
    static_assert(!std::is_trivially_copyable<void>::value, "");
}

int main()
{
    test();

    return 0;
}
