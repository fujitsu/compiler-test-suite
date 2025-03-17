
#include <utility>
#include <cassert>

void test()
{
    typedef std::pair<int, short> P1;
    P1 p1(3, 4);
    P1 p2(5, 6);
    p1.swap(p2);
    assert(p1.first == 5);
    assert(p1.second == 6);
    assert(p2.first == 3);
    assert(p2.second == 4);
}

int main()
{
    test();
}
