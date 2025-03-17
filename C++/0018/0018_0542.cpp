


#include <random>
#include <cassert>

int main()
{
#ifndef _LIBCPP_HAS_NO_GENERALIZED_INITIALIZERS
    {
        typedef std::piecewise_linear_distribution<> D;
        D d;
        std::vector<double> iv = d.intervals();
        assert(iv.size() == 2);
        assert(iv[0] == 0);
        assert(iv[1] == 1);
        std::vector<double> dn = d.densities();
        assert(dn.size() == 2);
        assert(dn[0] == 1);
        assert(dn[1] == 1);
    }
#endif  
}
