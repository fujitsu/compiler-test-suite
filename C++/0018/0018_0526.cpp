





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        D d1;
        D d2;
        assert(d1 == d2);
    }
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {1};
        D d1(p0, p0+1);
        D d2;
        assert(d1 == d2);
    }
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {10, 30};
        D d1(p0, p0+2);
        D d2;
        assert(d1 != d2);
    }
}
