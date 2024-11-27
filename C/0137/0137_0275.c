#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int x, y, z;
  printf("***** unroll001 ***** unroll 1 never 0 not 0\n");
  x = y = 0;
  while (y < 10)
    x += ++y;
  if (x != 55)
    printf ("ng 55=%d\n", x);
  if (y != 10)
    printf ("ng 10=%d\n", y);
  printf ("ok\n");
  printf("***** unroll001 ***** end\n");
exit (0);
}
