#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef int Array[10][10];
Array aa;
int main (void)
{
int sub (int L, int D, Array a);
  printf("***** unroll039 ***** unroll 1 never 0 not 0\n");
  sub (2, 2, aa);
  printf("***** unroll039 ***** end\n");
exit (0);
}
int sub (int L, int D, Array a)
{
  int i;
  for (i = D + 1; i <= L + 2; ++i)
    a[L][i] = L;
  if (a[2][3] != 2)
    printf ("3 = %d ng\n", a[2][3]);
  if (a[2][4] != 2)
    printf ("3 = %d ng\n", a[2][4]);
  printf("ok\n");
}
