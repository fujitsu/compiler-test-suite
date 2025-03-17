




#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_int_distribution<> D;
        D d(100, 10);
        assert(d.a() == 100);
        assert(d.b() == 10);
    }
}
