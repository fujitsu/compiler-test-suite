


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {.3, .1, .6};
        D d(p0, p0+3);
        assert(d.max() == 2);
    }
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {.3, .1, .6, .2};
        D d(p0, p0+4);
        assert(d.max() == 3);
    }
}
