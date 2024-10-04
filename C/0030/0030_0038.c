#include <stdio.h>
struct s { double c; float a[3][10]; } ;

struct s x = { .a[1][1] = 1, .c = 1 };
int main()
{
  printf("%e\n", x.a[1][0]);
  printf("%e\n", x.a[1][1]);
  printf("%e\n", x.a[1][2]);
  printf("%e\n", x.c);
}
