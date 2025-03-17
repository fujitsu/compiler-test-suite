#include <algorithm>
#include <functional>

int main()
{
  constexpr int ia[] = {1, 3, 4, 5, 5, 9};
  const unsigned sa = sizeof(ia) / sizeof(ia[0]);
  static_assert(*std::min_element(ia, ia + sa) == 1, "");
  static_assert(*std::min_element(ia, ia + sa, std::greater<int>()) == 9, "");
}
