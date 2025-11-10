#include <cstdio>

static auto func11() -> int
{
  return 42;
}

static auto func12(int a, int b) -> decltype(a + b)
{
  return a + b;
}

void sub1()
{
  std::printf("%d\n", func11() + func12(2, 3));
}
