




#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_int_distribution<> D;
        D d(10, 100);
        assert(d.a() == 10);
        assert(d.b() == 100);
    }
}
