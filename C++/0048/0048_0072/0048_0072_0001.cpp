#include <cstdio>
#include <cstdlib>

[[carries_dependency]] static void func71(int *p [[carries_dependency]])
{
  std::printf("%d\n", *p);
}

[[noreturn]] static void func72()
{
  std::exit(0);
}

void sub1()
{
  int a = 10;
  func71(&a);
  func72();
}
