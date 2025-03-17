





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::chi_squared_distribution<> D;
        D d1(2.5);
        D d2(2.5);
        assert(d1 == d2);
    }
    {
        typedef std::chi_squared_distribution<> D;
        D d1(4);
        D d2(4.5);
        assert(d1 != d2);
    }
}
