#include <utility>
#include <memory>
#include <type_traits>
#include <cassert>

int main()
{
   {
      int x = 42;
      int const y = 43;
      std::pair<int &&, int const &&> const p(std::move(x), std::move(y));
      static_assert(std::is_same<int &&, decltype(std::get<0>(std::move(p)))>::value, "");
      static_assert(noexcept(std::get<0>(std::move(p))), "");
      static_assert(std::is_same<int const &&, decltype(std::get<1>(std::move(p)))>::value, "");
      static_assert(noexcept(std::get<1>(std::move(p))), "");
   }

   {
      typedef std::pair<int, short> P;
      constexpr const P p1(3, 4);
      static_assert(std::get<0>(std::move(p1)) == 3, "");
      static_assert(std::get<1>(std::move(p1)) == 4, "");
   }
}
