#include <stdio.h>
struct t { int c; char * a[3]; } ;

struct t x = { .a[1] = "abc" };
int main()
{
  printf("%s\n", x.a[1]);
}


