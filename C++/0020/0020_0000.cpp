#include <algorithm>
#include <functional>
#include <utility>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::max(x, y, std::greater<int>()) == 1, "");
  static_assert(std::max(1, 2, std::greater<int>()) == 1, "");
}
