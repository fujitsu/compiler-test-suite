


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::weibull_distribution<> D;
        D d;
        assert(d.a() == 1);
        assert(d.b() == 1);
    }
    {
        typedef std::weibull_distribution<> D;
        D d(14.5);
        assert(d.a() == 14.5);
        assert(d.b() == 1);
    }
    {
        typedef std::weibull_distribution<> D;
        D d(14.5, 5.25);
        assert(d.a() == 14.5);
        assert(d.b() == 5.25);
    }
}
