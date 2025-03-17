


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::negative_binomial_distribution<> D;
        typedef D::param_type P;
        P p(5, 0.25);
        D d(p);
        assert(d.k() == 5);
        assert(d.p() == 0.25);
    }
}
