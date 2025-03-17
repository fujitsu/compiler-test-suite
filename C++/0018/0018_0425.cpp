


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::fisher_f_distribution<> D;
        D d;
        assert(d.m() == 1);
        assert(d.n() == 1);
    }
    {
        typedef std::fisher_f_distribution<> D;
        D d(14.5);
        assert(d.m() == 14.5);
        assert(d.n() == 1);
    }
    {
        typedef std::fisher_f_distribution<> D;
        D d(14.5, 5.25);
        assert(d.m() == 14.5);
        assert(d.n() == 5.25);
    }
}
