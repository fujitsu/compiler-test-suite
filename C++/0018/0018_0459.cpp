


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::student_t_distribution<> D;
        typedef D::param_type P;
        P p(0.25);
        D d(p);
        assert(d.n() == 0.25);
    }
}
