


#include <random>
#include <cassert>

void
test1()
{
    typedef std::lognormal_distribution<> D;
    D d1(20, 1.75);
    D d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
