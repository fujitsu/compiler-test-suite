


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::exponential_distribution<> D;
        D d(.25);
        D::result_type m = d.max();
        assert(m == std::numeric_limits<D::result_type>::infinity() ||  m == std::numeric_limits<D::result_type>::max() );
    }
}
