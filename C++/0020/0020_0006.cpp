#include <algorithm>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::min(x, y) == 1, "");
  static_assert(std::min(1, 2) == 1, "");
}
