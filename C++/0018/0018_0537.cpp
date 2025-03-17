


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::piecewise_constant_distribution<> D;
        double b[] = {10, 14, 16, 17};
        double p[] = {25, 62.5, 12.5};
        const size_t Np = sizeof(p) / sizeof(p[0]);
        D d(b, b+Np+1, p);
        assert(d.max() == 17);
    }
}
