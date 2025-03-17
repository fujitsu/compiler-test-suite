


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_real_distribution<> D;
        typedef D::param_type P;
        P p(3, 8);
        D d(p);
        assert(d.param() == p);
    }
}
