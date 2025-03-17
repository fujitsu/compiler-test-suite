


#include <random>
#include <cassert>

void
test1()
{
    typedef std::cauchy_distribution<> D;
    D d1(.5, 1.75);
    D d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
