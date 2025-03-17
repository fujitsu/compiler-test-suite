





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        D d1(3, .25);
        D d2(3, .25);
        assert(d1 == d2);
    }
    {
        typedef std::binomial_distribution<> D;
        D d1(3, .28);
        D d2(3, .25);
        assert(d1 != d2);
    }
    {
        typedef std::binomial_distribution<> D;
        D d1(3, .25);
        D d2(4, .25);
        assert(d1 != d2);
    }
}
