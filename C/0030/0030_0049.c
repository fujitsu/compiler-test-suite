#include <stdio.h>
struct t { int c; int a[2]; int d; } ;
struct s { struct t x; } ;
int main()
{
  struct s x = { {.a[1]=1,7} };
  printf("%d\n", x.x.a[0]);
  printf("%d\n", x.x.a[1]);
  printf("%d\n", x.x.a[2]);

  x = (struct s){ {.a[1]=2,8} };
  printf("%d\n", x.x.a[0]);
  printf("%d\n", x.x.a[1]);
  printf("%d\n", x.x.a[2]);
}
