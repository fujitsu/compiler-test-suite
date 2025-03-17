#include <algorithm>
#include <functional>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::max({1, 3, 0}, std::greater<int>()) == 0, "");
  static_assert(std::max({x, y}, std::greater<int>()) == y, "");

  return 0;
}
