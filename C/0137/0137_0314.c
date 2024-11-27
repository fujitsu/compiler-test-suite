#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <limits.h>
int sub (int L);
int main()
{
  printf("***** unroll048 ***** unroll 1 never 0 not 0\n");
  sub (INT_MAX);
  printf("***** unroll048 ***** end\n");
exit (0);
}

int sub (int L)
{
  int i;
  int check = 0;
  for (i = INT_MAX - 5; i < L; i++)
    check++;
  if (check == 5)
    printf ("ok\n");
  else
    printf ("ng\n");
}
