


#include <random>
#include <cassert>

void
test1()
{
    typedef std::exponential_distribution<> D;
    D d1(0.75);
    D d2;
    assert(d1 != d2);
    d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
