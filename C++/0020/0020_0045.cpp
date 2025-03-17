#include <cassert>
#include <iterator>

template <typename T, size_t Sz>
void test_array(T (&array1)[Sz])
{
  assert(std::rbegin(array1) == static_cast<std::reverse_iterator<T *>>(array1 + Sz));
  assert(*std::rbegin(array1) == array1[Sz - 1]);
}

template <typename T, size_t Sz>
void test_const_array(const T (&array1)[Sz])
{
  assert(std::rbegin(array1) == static_cast<std::reverse_iterator<const T *>>(array1 + Sz));
  assert(*std::rbegin(array1) == array1[Sz - 1]);
}

int main()
{
  int arrA[3] = {1, 2, 3};
  test_array(arrA);
  test_const_array(arrA);
}
