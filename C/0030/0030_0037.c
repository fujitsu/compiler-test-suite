#include <stdio.h>
struct s { double c; float a[3][10]; } ;
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1][1] = 1, .t.c = 1 };
int main()
{
  printf("%e\n", x.t.a[1][0]);
  printf("%e\n", x.t.a[1][1]);
  printf("%e\n", x.t.a[1][2]);
  printf("%e\n", x.t.c);
}
