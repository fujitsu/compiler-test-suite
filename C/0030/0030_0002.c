#include <stdio.h>
struct t { char * a, * b, *c; int d; } ;

struct t x = { .c = "abc" , .d = 1 };
int main()
{
  printf("%x\n", x.a);
  printf("%x\n", x.b);
  printf("%s\n", x.c);
  printf("%d\n", x.d);
}


