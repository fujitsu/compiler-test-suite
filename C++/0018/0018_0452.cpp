


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::normal_distribution<> D;
        D d(.5, .5);
        assert(d.min() == -INFINITY || d.min());
    }
}
