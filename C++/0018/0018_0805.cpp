
#include <utility>
#include <cassert>

void test()
{
    typedef std::pair<int, short> P;
    P p(3, 4);
    assert(std::get<0>(p) == 3);
    assert(std::get<1>(p) == 4);
    std::get<0>(p) = 5;
    std::get<1>(p) = 6;
    assert(std::get<0>(p) == 5);
    assert(std::get<1>(p) == 6);
}

int main()
{
    test();
}
