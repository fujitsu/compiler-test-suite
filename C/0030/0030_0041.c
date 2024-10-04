#include <stdio.h>
struct s { double c; float a[3]; } ;

struct s x = { .a[1] = 1, .c = 2, 3 };
int main()
{
  printf("%e\n", x.a[0]);
  printf("%e\n", x.a[1]);
  printf("%e\n", x.a[2]);
  printf("%e\n", x.c);
}
