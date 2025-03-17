


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {.3, .1, .6};
        D d(p0, p0+3);
        assert(d.min() == 0);
    }
}
