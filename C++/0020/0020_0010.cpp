#include <algorithm>
#include <functional>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::minmax(2, 1, std::greater<int>()) == std::pair<const int &, const int &>(2, 1), "");
  static_assert(std::minmax(x, y, std::greater<int>()) == std::pair<const int &, const int &>(x, y), "");
}
