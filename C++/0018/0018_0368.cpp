





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        typedef D::param_type P;
        P p(5, .125);
        D d(p);
        assert(d.param() == p);
    }
}
