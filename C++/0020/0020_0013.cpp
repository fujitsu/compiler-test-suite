#include <algorithm>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::minmax({1, 3, 0}) == std::pair<int, int>(0, 3), "");
  static_assert(std::minmax({x, y}) == std::pair<int, int>(y, x), "");
}
