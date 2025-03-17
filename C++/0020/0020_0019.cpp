#include <cassert>
#include <forward_list>
#include <functional>

int main()
{
  std::forward_list<int> l1 = {1, 2, 3, 4, 5, 6};
  std::forward_list<int> l2 = {7, 8, 9, 10};
  std::forward_list<int> l3 = {11, 12, 13, 14};

  std::forward_list<int> T1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  std::forward_list<int> T2 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};

  l2.merge(l1, std::less<int>());
  assert(l2 == T1);
  assert(l2.get_allocator() == l1.get_allocator());
  l2.merge(std::move(l3), std::less<int>());
  assert(l2 == T2);
  assert(l2.get_allocator() == l3.get_allocator());
}
