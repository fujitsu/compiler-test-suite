#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  int j1 = 0, j2 = 0;
  printf("***** unroll029 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i < 7; i++)
    if (i < 5)
      j1++;
    else
      j2++;
  if (j1 == 5 && j2 == 2)
    printf ("ok\n");
  else
    printf ("ng j1=%d j2=%d\n", j1, j2);
  printf("***** unroll029 ***** end\n");
exit (0);
}
