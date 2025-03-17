#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  if (func().a != 1)
    printf("ng\n");
  if (func().b != 0)
    printf("ok\n");
}
