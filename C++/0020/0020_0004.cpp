#include <algorithm>
#include <functional>

int main()
{
  constexpr int ia[] = {1, 3, 4, 5, 5, 9};
  const unsigned sa = sizeof(ia) / sizeof(ia[0]);
  static_assert(*std::max_element(ia, ia + sa) == 9, "");
  static_assert(*std::max_element(ia, ia + sa, std::greater<int>()) == 1, "");
}
