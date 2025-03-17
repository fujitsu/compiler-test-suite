


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        D d;
        std::vector<double> p = d.probabilities();
        assert(p.size() == 1);
        assert(p[0] == 1);
    }
}
