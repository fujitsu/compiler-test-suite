
#include <utility>
#include <tuple>
#include <cassert>

void test()
{
    typedef std::pair<int, int*> P1;
    typedef std::pair<int*, int> P2;
    typedef std::pair<P1, P2> P3;
    P3 p3(std::piecewise_construct, std::tuple<int, int*>(3, nullptr),
                                    std::tuple<int*, int>(nullptr, 4));
    assert(p3.first == P1(3, nullptr));
    assert(p3.second == P2(nullptr, 4));
}

int main()
{
    test();
}
