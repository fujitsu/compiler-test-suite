


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::normal_distribution<> D;
        D d(5, .25);
        D::result_type m = d.max();
        assert(m == INFINITY || m == std::numeric_limits<D::result_type>::max());
    }
}
