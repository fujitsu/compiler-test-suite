



#include <random>
#include <cassert>

int main()
{
    {
        typedef std::gamma_distribution<> D;
        D d(-1, 5.25);
        assert(d.alpha() == -1); 
        assert(d.beta() == 5.25);
    }
	
	{
        typedef std::gamma_distribution<> D;
        D d(0.25, -2);
        assert(d.alpha() == 0.25); 
        assert(d.beta() == -2);
    }
}
