

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        typedef D::param_type P;
        P p(5, 0.25);
        D d(p);
        assert(d.t() == 5);
        assert(d.p() == 0.25);
    }
}
