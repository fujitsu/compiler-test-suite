#include <utility>
#include <type_traits>
#include <cassert>

void test()
{
    static_assert(std::integer_sequence<int, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9>::size() == 10, "");
    static_assert(std::is_same<int, std::integer_sequence<int>::value_type>::value, "");
}

int main()
{
    test();

    return 0;
}
