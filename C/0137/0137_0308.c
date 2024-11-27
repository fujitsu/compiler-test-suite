#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef int Array[10][10];
Array aa;
int main (void)
{
int sub (int L, int D, Array a);
  printf("***** unroll038 ***** unroll 1 never 0 not 0\n");
  sub (3, 3, aa);
  printf("***** unroll038 ***** end\n");
exit (0);
}
int sub (int L, int D, Array a)
{
  int i;
  for (i = D; i <= L + 1; ++i)
    a[L][i] = L;
  if (a[3][3] != 3)
    printf ("3 = %d ng\n", a[3][3]);
  if (a[3][4] != 3)
    printf ("3 = %d ng\n", a[3][4]);
  printf("ok\n");
}
