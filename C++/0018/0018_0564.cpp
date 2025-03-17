





#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_real_distribution<> D;
        D d1(3, 8);
        D d2(3, 8);
        assert(d1 == d2);
    }
    {
        typedef std::uniform_real_distribution<> D;
        D d1(3, 8);
        D d2(3, 8.1);
        assert(d1 != d2);
    }
}
