


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::geometric_distribution<> D;
        typedef D::param_type P;
        P p(0.25);
        D d(0.75);
        d.param(p);
        assert(d.param() == p);
    }
}
