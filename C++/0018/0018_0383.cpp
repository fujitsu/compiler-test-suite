

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::geometric_distribution<> D;
        D d(.5);
        assert(d.min() == 0);
    }
}
