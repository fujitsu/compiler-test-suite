#include <stdio.h>

int main()
{
  int i;
  int j1 = 0, j2 = 0;
  printf("***** unroll028 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i < 6; i++)
    if (i < 5)
      j1++;
    else
      j2++;
  if (j1 == 5 && j2 == 1)
    printf ("ok\n");
  else
    printf ("ng j1=%d j2=%d\n", j1, j2);
  printf("***** unroll028 ***** end\n");
}
