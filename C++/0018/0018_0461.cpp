


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::student_t_distribution<> D;
        typedef D::param_type P;
        P p(.125);
        D d(p);
        assert(d.param() == p);
    }
}
