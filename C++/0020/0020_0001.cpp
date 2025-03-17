#include <algorithm>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::max(x, y) == x, "");
  static_assert(std::max(1, 2) == 2, "");
}
