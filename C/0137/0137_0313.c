#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <limits.h>
int main()
{
int sub (int L);
  unsigned int L;
  printf("***** unroll047 ***** unroll 0 never 0 not 1\n");
  L = INT_MAX;
  L += 5;
  sub (L);
  printf("***** unroll047 ***** end\n");
exit (0);
}

int sub (int L )
{
  unsigned int i;
  int check = 0;
  for (i = INT_MAX; i < L; i++)
    check++;
  if (check == 5)
    printf ("ok\n");
  else
    printf ("5=%d ng\n", check);
}
