





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::extreme_value_distribution<> D;
        D d(.5, .5);
        D::result_type m = d.min();
        assert(d.min() == -INFINITY || m == std::numeric_limits<D::result_type>::lowest());
    }
}
