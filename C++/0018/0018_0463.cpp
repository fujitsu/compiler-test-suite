


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::student_t_distribution<> D;
        D d(.5);
        assert(d.min() == -INFINITY || d.min() == std::numeric_limits<D::result_type>::lowest());
    }
}
