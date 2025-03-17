#include <stdio.h>


int c[10], d[10], e[10], j, k;
int main()
{
  int i;
  j = 5;
  printf("***** unroll036 ***** unroll 1 never 0 not 0\n");
  for (i = 9; i > 4; i--)
    {
      j = j - 1;
      k = j + 5;
      c[i] = k;
      d[j] = j;
    }
  if (c[5] != 5)
    printf ("ng 5 %d\n", c[5]);
  if (c[6] != 6)
    printf ("ng 6 %d\n", c[6]);
  if (c[7] != 7)
    printf ("ng 7 %d\n", c[7]);
  if (c[8] != 8)
    printf ("ng 8 %d\n", c[8]);
  if (c[9] != 9)
    printf ("ng 9 %d\n", c[9]);
  printf ("ok\n");
  printf("***** unroll036 ***** end\n");
}

