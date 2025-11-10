#include <cstdio>

template <typename T, int N>
struct B1
{
  static_assert(N > 0, "static_assert test");
  T array[N];
};

void sub1()
{
  B1<int, 10> b1;
  std::printf("%d\n", sizeof(b1));
}
