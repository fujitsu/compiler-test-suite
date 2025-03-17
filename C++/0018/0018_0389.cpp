

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::negative_binomial_distribution<> D;
        D d;
        assert(d.k() == 1);
        assert(d.p() == 0.5);
    }
    {
        typedef std::negative_binomial_distribution<> D;
        D d(3);
        assert(d.k() == 3);
        assert(d.p() == 0.5);
    }
    {
        typedef std::negative_binomial_distribution<> D;
        D d(3, 0.75);
        assert(d.k() == 3);
        assert(d.p() == 0.75);
    }
}
