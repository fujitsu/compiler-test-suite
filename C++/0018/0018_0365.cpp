

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        D d;
        assert(d.t() == 1);
        assert(d.p() == 0.5);
    }
    {
        typedef std::binomial_distribution<> D;
        D d(3);
        assert(d.t() == 3);
        assert(d.p() == 0.5);
    }
    {
        typedef std::binomial_distribution<> D;
        D d(3, 0.75);
        assert(d.t() == 3);
        assert(d.p() == 0.75);
    }
}
