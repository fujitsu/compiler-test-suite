


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::poisson_distribution<> D;
        D d(.5);
        assert(d.min() == 0);
    }
}
