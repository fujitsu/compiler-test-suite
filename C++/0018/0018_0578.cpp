









#include <random>
#include <type_traits>

void
test1()
{
    static_assert((std::is_same<
        std::mt19937::result_type,
        std::uint_fast32_t>::value), "");
}

void
test2()
{
    static_assert((std::is_same<
        std::mt19937_64::result_type,
        std::uint_fast64_t>::value), "");
}

int main()
{
    test1();
    test2();
}
