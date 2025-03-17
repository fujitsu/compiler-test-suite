



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::weibull_distribution<> D;
        D d(-1, 5.25);
        assert(d.a() == -1);
        assert(d.b() == 5.25);
    }
	
	{
        typedef std::weibull_distribution<> D;
        D d(4.5, -2);
        assert(d.a() == 4.5);
        assert(d.b() == -2);
    }
}
