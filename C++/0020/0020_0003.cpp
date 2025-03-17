#include <algorithm>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::max({1, 3, 0}) == 3, "");
  static_assert(std::max({x, y}) == x, "");
}
