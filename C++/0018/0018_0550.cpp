



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_int_distribution<> D;
        D d;
        assert(d.a() == 0);
        assert(d.b() == std::numeric_limits<int>::max());
    }
    {
        typedef std::uniform_int_distribution<> D;
        D d(-6);
        assert(d.a() == -6);
        assert(d.b() == std::numeric_limits<int>::max());
    }
    {
        typedef std::uniform_int_distribution<> D;
        D d(-6, 106);
        assert(d.a() == -6);
        assert(d.b() == 106);
    }
}
