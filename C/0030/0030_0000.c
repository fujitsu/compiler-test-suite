#include <stdio.h>
struct t { int a, b, c; } ;

struct t x = { .c = 1 };
int main()
{
  printf("%d\n", x.a);
  printf("%d\n", x.b);
  printf("%d\n", x.c);
}


