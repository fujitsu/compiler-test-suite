#include <stdio.h>
struct { int i; float f[2];}  x = {1,2,3};
int main()
{
  printf("%d\n", x.i);
  printf("%E\n", x.f[0]);
  printf("%E\n", x.f[1]);
}
