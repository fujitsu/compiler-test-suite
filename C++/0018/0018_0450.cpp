


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::normal_distribution<> D;
        typedef D::param_type P;
        P p(.125, .5);
        D d(p);
        assert(d.param() == p);
    }
}
