





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::exponential_distribution<> D;
        D d1(.25);
        D d2(.25);
        assert(d1 == d2);
    }
    {
        typedef std::exponential_distribution<> D;
        D d1(.28);
        D d2(.25);
        assert(d1 != d2);
    }
}
