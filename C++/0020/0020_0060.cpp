#include <cassert>
#include <memory>

void test()
{
  std::shared_ptr<int> p(new int(4));
  std::shared_ptr<int> v = nullptr;
  std::shared_ptr<int> w(new int(2));
  bool b = std::atomic_compare_exchange_weak(&p, &v, w);
  assert(b == false);
  assert(*p == 4);
  assert(*v == 4);
  assert(*w == 2);
}

int main()
{
  test();

  return 0;
}
