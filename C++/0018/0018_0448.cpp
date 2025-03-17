

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::normal_distribution<> D;
        typedef D::param_type P;
        P p(0.25, 10);
        D d(p);
        assert(d.mean() == 0.25);
        assert(d.stddev() == 10);
    }
}
