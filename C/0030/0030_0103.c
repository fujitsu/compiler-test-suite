#include <stdio.h>
struct {
  _Bool i: 1;
} x;
int main()
{
  x.i = 10;
  printf("%d\n", x.i);
}
