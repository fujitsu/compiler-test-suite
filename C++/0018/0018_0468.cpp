

#include <random>
#include <cassert>

int main()
{
    typedef std::exponential_distribution<> D;
    D d(-106);
    assert(d.lambda() == -106);
}
