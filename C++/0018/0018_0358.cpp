


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::bernoulli_distribution D;
        D d(.25);
        assert(d.max() == true);
    }
}
