#include <array>
#include <cassert>
#include <iterator>
#include <list>
#include <vector>

template <typename C>
void test_container(C &c, typename C::value_type val)
{
  assert(std::crend(c) == std::crend(c));
  assert(std::crend(c) == c.crend());
  assert(*std::prev(c.crend()) == val);
}

template <typename C>
void test_const_container(const C &c, typename C::value_type val)
{
  assert(std::crend(c) == std::crend(c));
  assert(std::crend(c) == c.crend());
  assert(*std::prev(c.crend()) == val);
}

int main()
{
  std::list<int> l{1, 2, 3};
  std::array<int, 3> a{1, 2, 3};
  std::vector<int> v{1, 2, 3};
  test_container(l, 1);
  test_container(a, 1);
  test_container(v, 1);
  test_const_container(l, 1);
  test_const_container(a, 1);
  test_const_container(v, 1);
}
