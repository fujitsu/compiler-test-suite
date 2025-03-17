

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::exponential_distribution<> D;
        D d;
        assert(d.lambda() == 1);
    }
    {
        typedef std::exponential_distribution<> D;
        D d(3.5);
        assert(d.lambda() == 3.5);
    }
}
