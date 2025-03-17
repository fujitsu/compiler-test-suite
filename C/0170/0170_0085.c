#include <stdio.h>


typedef int Array[10][10];
Array aa;
int main()
{
int sub (int L, Array a);
  printf("***** unroll040 ***** unroll 1 never 0 not 0\n");
  sub (2, aa);
  printf("***** unroll040 ***** end\n");
}
int sub (L, a)
     int L;
     Array a;
{
  int i;
  for (i = L + 1; i <= L + 2; ++i)
    a[L][i] = L;
  if (a[2][3] != 2)
    printf ("3 = %d ng\n", a[2][3]);
  if (a[2][4] != 2)
    printf ("3 = %d ng\n", a[2][4]);
  printf("ok\n");
}
