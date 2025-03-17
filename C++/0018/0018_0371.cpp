

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        D d(4, .5);
        assert(d.min() == 0);
    }
}
