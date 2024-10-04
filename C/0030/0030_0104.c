#include <stdio.h>
struct {
  unsigned char i: 3;
} x;
int main()
{
  x.i = 10;
  printf("%d\n", x.i);
}
