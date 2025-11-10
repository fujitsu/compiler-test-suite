#include <cstdio>

static void func1(int (*fp)(int, int))
{
  if (fp(2, 3) == 5) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

void sub1()
{
  func1([] (int a, int b) { return a + b; });
}
