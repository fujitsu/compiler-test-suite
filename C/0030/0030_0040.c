#include <stdio.h>
struct s { int c; int a[3][10]; } ;
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1] = {1,2,3} };
int main()
{
  printf("%x\n", x.t.a[1][0]);
  printf("%x\n", x.t.a[1][1]);
  printf("%x\n", x.t.a[1][2]);
}
