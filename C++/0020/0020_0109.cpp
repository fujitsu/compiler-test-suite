#include <tuple>
#include <cassert>

void test()
{
    static_assert(std::get<0>(std::forward_as_tuple(2, 'a')) == 2, "");
}

int main()
{
    test();

    return 0;
}
