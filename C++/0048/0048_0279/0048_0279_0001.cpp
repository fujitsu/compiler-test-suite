#include <cstdio>

namespace {
  void func1()
  {
    std::puts("OK");
  }
}

void sub1()
{
  func1();
}
