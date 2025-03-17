


#include <random>
#include <cassert>

void
test1()
{
    typedef std::negative_binomial_distribution<> D;
    D d1(2, 0.75);
    D d2;
    assert(d1 != d2);
    d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
