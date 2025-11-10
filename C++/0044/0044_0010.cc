#include <stdio.h>

struct X {};
struct Y {};

struct A {
  A();
  A(const A &) throw();
  ~A() noexcept(false);
};

struct B {
  B() throw();
  B(const B &) throw();
  ~B() noexcept(false);
};

struct D : public A, public B {};
int main() { printf("ok\n"); }
