


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::gamma_distribution<> D;
        D d;
        assert(d.alpha() == 1);
        assert(d.beta() == 1);
    }
    {
        typedef std::gamma_distribution<> D;
        D d(14.5);
        assert(d.alpha() == 14.5);
        assert(d.beta() == 1);
    }
    {
        typedef std::gamma_distribution<> D;
        D d(14.5, 5.25);
        assert(d.alpha() == 14.5);
        assert(d.beta() == 5.25);
    }
}
