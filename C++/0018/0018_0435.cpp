



#include <random>
#include <cassert>

int main()
{
    typedef std::lognormal_distribution<> D;
    D d(14.5, -5.25);
    assert(d.m() == 14.5);
    assert(d.s() == -5.25);
}
