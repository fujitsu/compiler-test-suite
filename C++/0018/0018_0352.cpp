


#include <random>
#include <cassert>

int main()
{

    {
        typedef std::bernoulli_distribution D;
        D d(0.75);
        assert(d.p() == 0.75);
    }
}
