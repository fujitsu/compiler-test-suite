
class A {};
class B {
 int (A::*ar)[1][2];
 int A::*arr[1];
 A (A::*p)(void);
 A A::*q;
 int A::*r(void);
}bobj;
int A::*(B::r)(void){return 0;}
#include <stdio.h>
int main()
{
  puts("ok");
}
