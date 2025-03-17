






#include <random>
#include <type_traits>

int main()
{
    {
        typedef std::student_t_distribution<> D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, double>::value), "");
    }
    {
        typedef std::student_t_distribution<float> D;
        typedef D::result_type result_type;
        static_assert((std::is_same<result_type, float>::value), "");
    }
}
