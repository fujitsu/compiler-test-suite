


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        typedef D::param_type P;
        double d0[] = {.3, .1, .6};
        P p(d0, d0+3);
        D d;
        d.param(p);
        assert(d.param() == p);
    }
}
