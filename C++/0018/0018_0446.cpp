



#include <random>
#include <cassert>

int main()
{
    typedef std::normal_distribution<> D;
    D d(14.5, -5.25);
    assert(d.mean() == 14.5);
    assert(d.stddev() == -5.25);
}
