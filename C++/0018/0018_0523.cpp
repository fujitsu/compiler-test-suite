


#include <random>
#include <cassert>

void
test1()
{
    typedef std::discrete_distribution<> D;
    double p[] = {2, 4, 1, 8};
    D d1(p, p+4);
    D d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
