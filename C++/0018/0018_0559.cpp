

#include <random>
#include <cassert>

void
test1()
{
    typedef std::uniform_real_distribution<float> D;
    D d1(2, 5);
    D d2;
    assert(d1 != d2);
    d2 = d1;
    assert(d1 == d2);
}

int main()
{
    test1();
}
