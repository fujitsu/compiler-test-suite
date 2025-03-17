


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::poisson_distribution<> D;
        D d;
        assert(d.mean() == 1);
    }
    {
        typedef std::poisson_distribution<> D;
        D d(3.5);
        assert(d.mean() == 3.5);
    }
}
