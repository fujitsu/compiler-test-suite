#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int h[10];
  int *k = h;
  int i;
  printf("***** unroll005 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i < 10; i++)
    {
      *(k++) = i;
    }
  printf ("%d ", h[0]);
  printf ("%d ", h[1]);
  printf ("%d ", h[2]);
  printf ("%d ", h[3]);
  printf ("%d ", h[4]);
  printf ("%d ", h[5]);
  printf ("%d ", h[6]);
  printf ("%d ", h[7]);
  printf ("%d ", h[8]);
  printf ("%d\n", h[9]);
  printf("***** unroll005 ***** end\n");
exit (0);
}
