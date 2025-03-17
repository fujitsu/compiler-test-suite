



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::fisher_f_distribution<> D;
        D d(-14.5, -5.25);
        assert(d.m() == -14.5);
        assert(d.n() == -5.25);
    }
}
