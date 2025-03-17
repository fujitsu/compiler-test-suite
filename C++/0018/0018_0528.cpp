










#include <random>
#include <sstream>
#include <cassert>

int main()
{
    {
        typedef std::discrete_distribution<> D;
        double p0[] = {.3, .1, .6};
        D d1(p0, p0+3);
        std::ostringstream os;
        os << d1;
        std::istringstream is(os.str());
        D d2;
        is >> d2;
        assert(d1 == d2);
    }
}
