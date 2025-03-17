


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::poisson_distribution<> D;
        D d(.25);
        D::result_type m = d.max();
        assert(m == std::numeric_limits<int>::max());
    }
}
