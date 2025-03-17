


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::bernoulli_distribution D;
        D d(.5);
        assert(d.min() == false);
    }
}
