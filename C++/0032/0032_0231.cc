#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  struct tag t;
  t = func();
  if (t.a != 1)
    printf("ng %d\n",t.a);
  if (t.b != 0)
    printf("ok\n");
  else
    printf("ng2 %d\n",t.b);
}
