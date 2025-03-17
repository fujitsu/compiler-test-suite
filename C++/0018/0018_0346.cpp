


#include <random>
#include <cassert>

void
test1()
{
    std::knuth_b e1;
    std::knuth_b e2 = e1;
    assert(e1 == e2);
    e1.discard(3);
    assert(e1 != e2);
    e2();
    e2();
    e2();
    assert(e1 == e2);
}

int main()
{
    test1();
}
