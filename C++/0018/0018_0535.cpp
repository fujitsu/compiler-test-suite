


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::piecewise_constant_distribution<> D;
        D d;
        std::vector<double> iv = d.intervals();
        assert(iv.size() == 2);
        assert(iv[0] == 0);
        assert(iv[1] == 1);
        std::vector<double> dn = d.densities();
        assert(dn.size() == 1);
        assert(dn[0] == 1);
    }
}
