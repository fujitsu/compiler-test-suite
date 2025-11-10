#include <cstdio>

struct A {
  virtual void f() final {puts("A.f()");}
  virtual void g() const {puts("A.g()");}
  virtual void h()       {puts("A.h()");}
};

struct B : A {
  
  
  void h()          {puts("B.h()");}
};

int main()
{
}
