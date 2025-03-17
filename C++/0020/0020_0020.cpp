#include <cassert>
#include <forward_list>

int main()
{
  std::forward_list<int> l1 = {1, 2, 3, 4, 5};
  std::forward_list<int> l2 = {7, 9, 10};
  const int l3[] = {7, 1, 2, 3, 4, 5, 9, 10};
  l2.splice_after(l2.cbegin(), std::move(l1));

  typename std::forward_list<int>::const_iterator i = l2.begin();
  int n1 = 0;
  int l2_size = std::end(l3) - std::begin(l3);
  for (; n1 < l2_size; ++n1, ++i)
    assert(*i == l3[n1]);
  assert(l2.get_allocator() == l1.get_allocator());
}
