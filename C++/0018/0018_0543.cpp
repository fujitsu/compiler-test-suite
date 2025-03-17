


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::piecewise_linear_distribution<> D;
        typedef D::param_type P;
        double b[] = {10, 14, 16, 17};
        double p[] = {25, 62.5, 12.5, 10};
        const size_t Np = sizeof(p) / sizeof(p[0]);
        P pa(b, b+Np, p);
        D d(pa);
        assert(d.param() == pa);
    }
}
