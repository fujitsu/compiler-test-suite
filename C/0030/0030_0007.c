#include <stdio.h>
struct t { int c; char a[3][10]; } ;

struct t x = { .a[1] = "abc" };
int main()
{
  printf("%s\n", x.a[0]);
  printf("%s\n", x.a[1]);
  printf("%s\n", x.a[2]);
}


