#include <type_traits>
#include <cassert>

void test()
{
    static_assert(std::is_literal_type<void>::value, "");
    static_assert(std::is_literal_type<const void>::value, "");
    static_assert(std::is_literal_type<volatile void>::value, "");
    static_assert(std::is_literal_type<const volatile void>::value, "");
}

int main()
{
    test();

    return 0;
}
