



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::extreme_value_distribution<> D;
        D d(14.5, -5.25);
        assert(d.a() == 14.5);
        assert(d.b() == -5.25);
    }
}
