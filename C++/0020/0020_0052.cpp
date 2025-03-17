#include <cassert>
#include <initializer_list>
#include <iterator>

template <typename T>
void test_initializer_list(std::initializer_list<T> &c, T val)
{
  assert(std::rend(c) == static_cast<std::reverse_iterator<const T *>>(c.begin()));
  assert(*std::prev(std::rend(c)) == val);
}

template <typename T>
void test_const_initializer_list(const std::initializer_list<T> &c, T val)
{
  assert(std::rend(c) == static_cast<std::reverse_iterator<const T *>>(c.begin()));
  assert(*std::prev(std::rend(c)) == val);
}

int main()
{
  std::initializer_list<int> i1 = {1, 2, 3};
  test_initializer_list(i1, 1);
  test_const_initializer_list(i1, 1);
}
