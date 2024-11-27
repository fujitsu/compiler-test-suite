#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int b);
int main (void)
{
  printf("***** unroll031 ***** unroll 1 never 0 not 0\n");
  sub (100);
  printf("***** unroll031 ***** end\n");
exit (0);
}
int sub (int b)
{
  if (b < 0)
    return 1;
  while (b > 31)
    {
      b -= 32;
    }
  if (b == 4)
    printf ("ok\n");
  else
    printf ("ng 4 %d\n", b);
}
