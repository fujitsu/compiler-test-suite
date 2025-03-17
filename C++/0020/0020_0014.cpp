#include <algorithm>
#include <functional>
#include <utility>

int main()
{
  constexpr int ia[] = {1, 3, 4, 5, 5, 9};
  const unsigned sa = sizeof(ia) / sizeof(ia[0]);
  static_assert(*std::minmax_element(ia, ia + sa).first == 1, "");
  static_assert(*std::minmax_element(ia, ia + sa).second == 9, "");
  static_assert(*std::minmax_element(ia, ia + sa, std::greater<int>()).first == 9, "");
  static_assert(*std::minmax_element(ia, ia + sa, std::greater<int>()).second == 1, "");
}
