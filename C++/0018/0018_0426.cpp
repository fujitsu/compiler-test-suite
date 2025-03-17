


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::fisher_f_distribution<> D;
        typedef D::param_type P;
        P p(0.25, 10);
        D d(p);
        assert(d.m() == 0.25);
        assert(d.n() == 10);
    }
}
