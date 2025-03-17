


#include <random>
#include <cassert>

int main()
{
    {
        typedef std::binomial_distribution<> D;
        D d(3, 2); 
        assert(d.t() == 3);
        assert(d.p() == 2);
    }
	
	{
        typedef std::binomial_distribution<> D;
        D d(-1, 0.75); 
        assert(d.t() == -1);
        assert(d.p() == 0.75);
    }
}
