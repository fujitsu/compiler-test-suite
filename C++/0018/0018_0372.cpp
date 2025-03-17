


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        typedef D::param_type P;
        P p(10, 0.25);
        D d(8, 0.75);
        d.param(p);
        assert(d.param() == p);
    }
}
