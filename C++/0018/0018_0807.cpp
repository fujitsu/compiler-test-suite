
#include <utility>
#include <cassert>

void test()
{
    const std::pair<int, short> p(3, 4);
    assert(std::get<0>(p) == 3);
    assert(std::get<1>(p) == 4);
}

int main()
{
    test();
}
