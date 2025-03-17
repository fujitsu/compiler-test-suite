
union TAG {
  void f(int,char);
  void ff(int){}
  class A { int a; };
  struct B { };
  union C {int b ;};
  enum EN {e1};
  int a;
};
#include <stdio.h>
int main()
{
  puts("ok");
}
