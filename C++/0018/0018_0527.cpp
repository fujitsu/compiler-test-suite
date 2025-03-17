


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        typedef D::param_type P;
        double p0[] = {.3, .1, .6};
        P p(p0, p0+3);
        D d(p);
        assert(d.param() == p);
    }
}
