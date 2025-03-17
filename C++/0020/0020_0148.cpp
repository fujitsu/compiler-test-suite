#include <utility>
#include <string>
#include <type_traits>
#include <complex>
#include <memory>

#include <cassert>

int main()
{

    {
        constexpr const std::pair<int, const int> p{1, 2};
        static_assert(std::get<int>(std::move(p)) == 1, "");
        static_assert(std::is_same<int const &&, decltype(std::get<int>(std::move(p)))>::value, "");
        static_assert(std::get<const int>(std::move(p)) == 2, "");
    }
}
