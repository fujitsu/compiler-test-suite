#include <stdio.h>
struct s { int c; char* a[3]; } ;
struct t { int c; int a[3]; struct s t; } ;

struct t x = { .t.a[1] = "abc" };
int main()
{
  printf("%x\n", x.t.a[0]);
  printf("%s\n", x.t.a[1]);
  printf("%x\n", x.t.a[2]);
}


