

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        D d(4, .25);
        assert(d.max() == 4);
    }
}
