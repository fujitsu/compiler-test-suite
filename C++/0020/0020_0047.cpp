#include <array>
#include <cassert>
#include <forward_list>
#include <iterator>
#include <list>
#include <vector>

template <typename C>
void test_container(C &c, typename C::value_type val)
{
  assert(std::cbegin(c) == std::begin(c));
  assert(std::begin(c) == c.begin());
  assert(*c.begin() == val);
}

template <typename C>
void test_const_container(const C &c, typename C::value_type val)
{
  assert(std::cbegin(c) == std::begin(c));
  assert(std::begin(c) == c.begin());
  assert(*c.begin() == val);
}

int main()
{
  std::forward_list<int> l1{1, 2, 3};
  std::list<int> l2{1, 2, 3};
  std::array<int, 3> a{1, 2, 3};
  std::vector<int> v{1, 2, 3};
  test_container(l1, 1);
  test_container(l2, 1);
  test_container(a, 1);
  test_container(v, 1);
  test_const_container(l1, 1);
  test_const_container(l2, 1);
  test_const_container(a, 1);
  test_const_container(v, 1);

  constexpr int a2[] = {4, 5, 6};
  static_assert(*std::cbegin(a2) == 4, "");
}
