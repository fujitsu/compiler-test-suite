


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::gamma_distribution<> D;
        typedef D::param_type P;
        P p(0.25, 10);
        D d(p);
        assert(d.alpha() == 0.25);
        assert(d.beta() == 10);
    }
}
