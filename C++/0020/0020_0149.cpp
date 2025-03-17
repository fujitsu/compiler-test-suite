#include <utility>
#include <string>
#include <type_traits>
#include <complex>
#include <memory>

#include <cassert>

int main()
{

   {
      std::pair<int, const int> p1{1, 2};
      int &i1 = std::get<int>(p1);
      const int &i2 = std::get<const int>(p1);
      assert(i1 == 1);
      assert(i2 == 2);
      static_assert(std::is_same<int &, decltype(std::get<int>(p1))>::value, "");
      static_assert(std::is_same<const int &, decltype(std::get<const int>(p1))>::value, "");
   }

   {
      constexpr const std::pair<int, const int> p{1, 2};
      static_assert(std::get<int>(p) == 1, "");
      static_assert(std::get<const int>(p) == 2, "");
      static_assert(std::is_same<const int &, decltype(std::get<int>(p))>::value, "");
      static_assert(std::is_same<const int &, decltype(std::get<const int>(p))>::value, "");
   }
}
