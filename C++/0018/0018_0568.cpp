

#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_real_distribution<> D;
        D d(3, 8);
        assert(d.min() == 3);
    }
}
