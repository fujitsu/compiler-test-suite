


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_int_distribution<> D;
        D d(3, 8);
        assert(d.max() == 8);
    }
}
