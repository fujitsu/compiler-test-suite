

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::bernoulli_distribution D;
        typedef D::param_type P;
        P p(0.25);
        D d(p);
        assert(d.p() == 0.25);
    }
}
