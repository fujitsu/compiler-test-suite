#include <cassert>
#include <forward_list>

int main()
{
  std::forward_list<int> i1 = {1, 2, 3};
  std::forward_list<int> i2 = {4, 5, 6, 7, 8};
  const int i3[] = {4, 2, 3, 5, 6, 7, 8};

  i2.splice_after(i2.cbegin(), std::move(i1), i1.cbegin(), i1.cend());
  typedef std::forward_list<int> C;
  typename C::const_iterator i = i2.begin();
  int n1 = 0;
  int p = std::end(i3) - std::begin(i3);
  for (; n1 < p; ++n1, ++i)
    assert(*i == i3[n1]);
  assert(i2.get_allocator() == i1.get_allocator());
}
