


#include <random>
#include <cassert>

void
test1()
{
    std::ranlux24 e1;
    std::ranlux24 e2 = e1;
    assert(e1 == e2);
    e1.discard(3);
    assert(e1 != e2);
    e2();
    e2();
    e2();
    assert(e1 == e2);
}

void
test2()
{
    std::ranlux48 e1;
    std::ranlux48 e2 = e1;
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
    test2();
}
