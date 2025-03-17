
class A {
public:
  int *a;
}aobj;
int * (A::* p) = &A::a;
#include <stdio.h>
int main()
{
  puts("ok");
}
