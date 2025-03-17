


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::lognormal_distribution<> D;
        D d(.5, .5);
        assert(d.min() == 0);
    }
}
