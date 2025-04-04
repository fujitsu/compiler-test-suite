


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        typedef D::param_type P;
        double p0[] = {10, 30};
        P pa(p0, p0+2);
        D d(pa);
        std::vector<double> p = d.probabilities();
        assert(p.size() == 2);
        assert(p[0] == 0.25);
        assert(p[1] == 0.75);
    }
}
