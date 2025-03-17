#include <algorithm>
#include <functional>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::minmax({1, 3, 0}, std::greater<int>()) == std::pair<int, int>(3, 0), "");
  static_assert(std::minmax({x, y}, std::greater<int>()) == std::pair<int, int>(x, y), "");
}
