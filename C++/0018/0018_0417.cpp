










#include <random>
#include <sstream>
#include <cassert>

int main()
{
    {
        typedef std::chi_squared_distribution<> D;
        D d1(7);
        std::ostringstream os;
        os << d1;
        std::istringstream is(os.str());
        D d2;
        is >> d2;
        assert(d1 == d2);
    }
}
