

#include <random>
#include <cassert>

void
test1()
{
    typedef std::piecewise_linear_distribution<> D;
    double p[] = {2, 4, 1, 8, 3};
    double b[] = {2, 4, 5, 8, 9};
    D d1(b, b+5, p);
    D d2;
    assert(d1 != d2);
    d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
