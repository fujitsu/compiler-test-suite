#include <stdio.h>


typedef int Array[10][10];
Array aa;
int main()
{
int sub (int L, Array a);
  printf("***** unroll041 ***** unroll 1 never 0 not 0\n");
  sub (2, aa);
  printf("***** unroll041 ***** end\n");
}
int sub (L, a)
     int L;
     Array a;
{
  int i;
  for (i = L - 1; i <= L; ++i)
    a[L][i] = L;
  if (a[2][1] != 2)
    printf ("1.  2=%d ng\n", a[2][1]);
  if (a[2][2] != 2)
    printf ("2.  2=%d ng\n", a[2][2]);
  printf("ok\n");
}
