#include <cstdio>
#include <array>

void sub1()
{
  std::array<int, 3> a = {{1, 2, 3}};
  for (int i = 0; i < 3; ++i) {
    std::printf("%d\n", a[i]);
  }
}
