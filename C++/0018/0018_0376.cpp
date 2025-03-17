



#include <random>
#include <cassert>

int main()
{
    typedef std::geometric_distribution<> D;
    D d(3);
    assert(d.p() == 3);
}
