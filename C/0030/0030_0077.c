#include <stdio.h>
struct s { int c; long a[3][10]; } ;
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1] = (long)L"abc" };
int main()
{
  printf("OK\n");
}
