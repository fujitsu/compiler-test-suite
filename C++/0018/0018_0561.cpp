




#include <random>
#include <cassert>
#include <limits>
int main()
{
    {
        typedef std::uniform_real_distribution<> D;
		typedef D::result_type RealType;
        D d(6, 106);
        assert(d.a() == 6);
        assert(d.b() == 106);
    }
	
	{
        typedef std::uniform_real_distribution<> D;
		typedef D::result_type RealType;
        D d(6, 6 + std::numeric_limits<RealType>::max() + 1); 
        assert(d.a() == 6);
        assert(d.b() == 6 + std::numeric_limits<RealType>::max() + 1);
	}
}
