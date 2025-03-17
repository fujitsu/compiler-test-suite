


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::chi_squared_distribution<> D;
        D d;
        assert(d.n() == 1);
    }
    {
        typedef std::chi_squared_distribution<> D;
        D d(14.5);
        assert(d.n() == 14.5);
    }  
}
