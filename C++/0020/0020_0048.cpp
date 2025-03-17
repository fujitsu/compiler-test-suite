#include <array>
#include <cassert>
#include <forward_list>
#include <iterator>
#include <vector>

template <typename C>
void test_container(C &c, typename C::value_type val)
{
  assert(std::cend(c) == std::end(c));
  assert(std::end(c) == c.end());
  assert(*std::prev(c.end()) == val);
}

template <typename C>
void test_const_container(const C &c, typename C::value_type val)
{
  assert(std::cend(c) == std::end(c));
  assert(std::end(c) == c.end());
  assert(*std::prev(c.end()) == val);
}

int main()
{
  std::forward_list<int> l1{1, 2, 3};
  std::array<int, 3> a{1, 2, 3};
  std::vector<int> v{1, 2, 3};
  test_container(a, 3);
  test_container(v, 3);
  test_const_container(a, 3);
  test_const_container(v, 3);

  constexpr int a2[] = {4, 5, 6};
  static_assert(std::cend(a2) != std::cbegin(a2), "");
  static_assert(std::cend(a2) == a2 + 3, "");
}
