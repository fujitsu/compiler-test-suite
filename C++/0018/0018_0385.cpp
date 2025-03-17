





#include <random>
#include <type_traits>

int main()
{
    {
        typedef std::geometric_distribution<> D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, int>::value), "");
    }
    {
        typedef std::geometric_distribution<long> D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, long>::value), "");
    }
}
