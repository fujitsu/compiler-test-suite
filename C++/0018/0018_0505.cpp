





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::poisson_distribution<> D;
        D d1(.25);
        D d2(.25);
        assert(d1 == d2);
    }
    {
        typedef std::poisson_distribution<> D;
        D d1(.28);
        D d2(.25);
        assert(d1 != d2);
    }
}
