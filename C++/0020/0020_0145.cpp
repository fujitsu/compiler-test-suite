#include <utility>
#include <type_traits>
#include <cassert>

void test()
{
    static_assert(std::is_same<std::make_integer_sequence<int, 0>, std::integer_sequence<int>>::value, "");
    static_assert(std::is_same<std::make_integer_sequence<int, 1>, std::integer_sequence<int, 0>>::value, "");
    static_assert(std::is_same<std::make_integer_sequence<int, 2>, std::integer_sequence<int, 0, 1>>::value, "");
    static_assert(std::is_same<std::make_integer_sequence<int, 3>, std::integer_sequence<int, 0, 1, 2>>::value, "");
}

int main()
{
    test();

    return 0;
}
