#include <stdio.h>
struct t { char * a, * b, *c; } ;

struct t x = { .c = "abc" };
int main()
{
  printf("%x\n", x.a);
  printf("%x\n", x.b);
  printf("%s\n", x.c);
}


