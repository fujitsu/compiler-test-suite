#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  int a,b;
  if ((a=func().a) != 1)
    printf("ng %d\n",a);
  if ((b=func().b) != 0)
    printf("ok\n");
  else
    printf("ng2 %d\n",b);
}
