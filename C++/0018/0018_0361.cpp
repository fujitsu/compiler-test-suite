




#include <random>
#include <type_traits>

int main()
{
    {
        typedef std::bernoulli_distribution D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, bool>::value), "");
    }
}
