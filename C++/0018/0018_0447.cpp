


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::normal_distribution<> D;
        D d;
        assert(d.mean() == 0);
        assert(d.stddev() == 1);
    }
    {
        typedef std::normal_distribution<> D;
        D d(14.5);
        assert(d.mean() == 14.5);
        assert(d.stddev() == 1);
    }
    {
        typedef std::normal_distribution<> D;
        D d(14.5, 5.25);
        assert(d.mean() == 14.5);
        assert(d.stddev() == 5.25);
    }
}
