#include <algorithm>
#include <functional>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::min(x, y, std::greater<int>()) == 2, "");
  static_assert(std::min(1, 2, std::greater<int>()) == 2, "");
}
