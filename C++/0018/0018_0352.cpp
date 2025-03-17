


#include <random>
#include <cassert>

int main()
{

    {
        typedef std::bernoulli_distribution D;
        D d(2);
        assert(d.p() == 2);
    }
}
