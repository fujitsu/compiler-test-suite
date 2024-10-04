#include <stdio.h>
struct t { int c; int a[5]; } ;
struct s { struct t x; } ;

struct s x = { {.a[1]=1,7} };
int main()
{
  printf("%d\n", x.x.a[0]);
  printf("%d\n", x.x.a[1]);
  printf("%d\n", x.x.a[2]);
}
