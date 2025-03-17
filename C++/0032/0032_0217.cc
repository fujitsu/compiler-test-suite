
class A {};
class X{
 public:
  class A {};
};
class B :public X::A{
 public:
  int b;
};
class BB : public A {
 public:
  int bb;
};
#include <stdio.h>
int main()
{
#if !defined(__GSP__)
  (int A::*)&B::b;   
  (int X::A::*)&BB::bb;   
#endif

  puts("ok");
}
