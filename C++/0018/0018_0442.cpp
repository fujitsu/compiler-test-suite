


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::lognormal_distribution<> D;
        typedef D::param_type P;
        P p(0.25, 5.5);
        D d(0.75, 4);
        d.param(p);
        assert(d.param() == p);
    }
}
