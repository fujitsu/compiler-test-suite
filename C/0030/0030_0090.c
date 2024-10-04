#include <stdio.h>
struct t { char a[10], b[10], c[10]; } ;

struct t x = { .c = "abc" };
int main()
{
  printf("%s\n", x.c);
}


