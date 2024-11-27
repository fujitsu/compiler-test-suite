#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);
int main()
{
  printf("***** unroll020 ***** unroll 1 never 0 not 0\n");
  sub (10);
  printf("***** unroll020 ***** end\n");
exit (0);
}
int sub (L)
     int L;
{
  int i;
  i = 0;
  while (i != 10)
    {
      i++;
    }
  if (i == 10)
    printf ("ok\n");
  else
    printf ("10 = %d ng\n", i);
}
