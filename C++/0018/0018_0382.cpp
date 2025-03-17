

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::geometric_distribution<> D;
        D d(.25);
        assert(d.max() == std::numeric_limits<int>::max());
    }
}
