#include <cstdio>
#include "000.hpp"

namespace MyNameSpace
{
  struct MyType {};

  void func1(const MyType&)
  {
    std::puts("MyNameSpace::func");
  }
}

void sub1()
{
  func1(MyNameSpace::MyType());
}
