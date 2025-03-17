class A {
  public:
  int a;
  void afunc(){ a = 1;}
};
#include <stdio.h>
int main()
{
  void (A::*mp)()= &A::afunc;
  mp = &A::afunc;

  puts("ok");
}
