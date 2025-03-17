


#include <random>
#include <type_traits>

int main()
{
    static_assert((std::is_same<std::seed_seq::result_type, std::uint_least32_t>::value), "");
}
