#include <type_traits>
#include <cassert>

void test()
{

    static_assert((std::is_same<std::common_type<int, int>::type, int>::value), "");
}

int main()
{
    test();

    return 0;
}
