
class A {
  int a;
};
class B {
 int (A::*ar)[3][5];
 int A::*arr[2];
 int (A::*p)(void);
 A A::*q;
 int A::*r(void);
};
#include <stdio.h>
int main()
{
  puts("ok");
}
