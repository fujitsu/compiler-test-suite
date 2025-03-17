





#include <random>
#include <type_traits>

int main()
{
    {
        typedef std::uniform_int_distribution<long> D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, long>::value), "");
    }
}
