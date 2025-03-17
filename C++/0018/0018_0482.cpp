


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::extreme_value_distribution<> D;
        typedef D::param_type P;
        P p(0.25, 10);
        D d(p);
        assert(d.a() == 0.25);
        assert(d.b() == 10);
    }
}
