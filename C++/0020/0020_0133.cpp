#include <type_traits>
#include <cassert>

class S
{
};

void test()
{
    static_assert(std::is_standard_layout<S[]>::value, "");
}

int main()
{
    test();

    return 0;
}
