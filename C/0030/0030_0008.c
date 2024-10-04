#include <stdio.h>
struct s { int c; int a[3]; } ;
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1] = 1 };
int main()
{
  printf("%d\n", x.t.a[0]);
  printf("%d\n", x.t.a[1]);
  printf("%d\n", x.t.a[2]);
}


