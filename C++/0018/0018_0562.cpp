



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::uniform_real_distribution<> D;
        D d;
        assert(d.a() == 0);
        assert(d.b() == 1);
    }
    {
        typedef std::uniform_real_distribution<> D;
        D d(-6);
        assert(d.a() == -6);
        assert(d.b() == 1);
    }
    {
        typedef std::uniform_real_distribution<> D;
        D d(-6, 106);
        assert(d.a() == -6);
        assert(d.b() == 106);
    }
}
