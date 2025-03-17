
class A {};
class B{
  int A::*(A::*x);
  int A::*(A::*y[1])[2];
};
#include <stdio.h>
int main()
{
  puts("ok");
}
