#include <cstdio>

struct A {};

namespace N {
  struct A
  {
    void g()
    {
      std::puts("OK");
    }
    
    template <typename T> operator T()
    {
      g();
      return T{};
    }
  };
}

void sub1()
{
  N::A a;
  a.operator A();
}
