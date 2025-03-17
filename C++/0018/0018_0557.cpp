

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_int_distribution<> D;
        typedef D::param_type P;
        P p(3, 8);
        D d(6, 7);
        d.param(p);
        assert(d.param() == p);
    }
}
