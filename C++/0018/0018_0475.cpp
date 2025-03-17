


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::exponential_distribution<> D;
        D d(.5);
        assert(d.min() == 0);
    }
}
