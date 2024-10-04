#include <stdio.h>
struct t { int c; int a[3]; } ;

struct t x = { .a[1] = 1 };
int main()
{
  printf("%d\n", x.a[0]);
  printf("%d\n", x.a[1]);
  printf("%d\n", x.a[2]);
}


