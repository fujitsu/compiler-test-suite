



#include <random>
#include <cassert>

int main()
{
    typedef std::poisson_distribution<> D;
    D d(-2);
    assert(d.mean() == -2);
}
