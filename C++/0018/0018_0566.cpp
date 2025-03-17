










#include <random>
#include <sstream>
#include <cassert>

int main()
{
    {
        typedef std::uniform_real_distribution<> D;
        D d1(3, 8);
        std::ostringstream os;
        os << d1;
        std::istringstream is(os.str());
        D d2;
        is >> d2;
        assert(d1 == d2);
    }
}
