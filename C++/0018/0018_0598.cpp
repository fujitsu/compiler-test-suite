





#include <random>
#include <type_traits>
#include <limits>
#include <cassert>

int main()
{
    typedef std::random_device  RD; 
    typedef typename RD::result_type result_type;
	static_assert(std::is_same<result_type, unsigned int>::value, "");
    static_assert(RD::min() == std::numeric_limits<result_type>::min(), "");
    static_assert(RD::max() == std::numeric_limits<result_type>::max(), "");
}
