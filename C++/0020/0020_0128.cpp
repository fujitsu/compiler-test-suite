#include <type_traits>
#include <cassert>

class S
{
};

void test()
{
    static_assert(!std::is_pod<void>::value, "");
    static_assert(std::is_pod<S>::value, "");
}

int main()
{
    test();

    return 0;
}
