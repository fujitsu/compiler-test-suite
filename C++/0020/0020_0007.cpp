#include <algorithm>
#include <functional>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::min({1, 3, 0}, std::greater<int>()) == 3, "");
  static_assert(std::min({x, y}, std::greater<int>()) == x, "");
}
