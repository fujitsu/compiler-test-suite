#include <algorithm>

int main()
{
  constexpr int x = 2;
  constexpr int y = 1;
  static_assert(std::minmax(2, 1) == std::pair<const int &, const int &>(1, 2), "");
  static_assert(std::minmax(x, y) == std::pair<const int &, const int &>(y, x), "");
}
