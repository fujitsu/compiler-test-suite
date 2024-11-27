#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);
struct t
  {
    int m[1003];
  };
int main (void)
{
  sub (100);
exit (0);
}

int sub (int L)
{
  int lcount;
  struct t s1, s2;

  printf("***** unroll052 ***** unroll 1 never 0 not 0\n");
  for (lcount = 0; lcount < L; lcount++)
    s1.m[lcount] = lcount;
  printf ("%d ", s1.m[0]);
  printf ("%d ", s1.m[1]);
  printf ("%d ", s1.m[2]);
  printf ("%d ", s1.m[3]);
  printf ("%d ", s1.m[4]);
  printf ("%d ", s1.m[5]);
  printf ("%d ", s1.m[6]);
  printf ("%d ", s1.m[7]);
  printf ("%d ", s1.m[8]);
  printf ("%d\n", s1.m[9]);
  if (s1.m[0] != 0)
    printf ("ng\n");
  if (s1.m[1] != 1)
    printf ("ng\n");
  if (s1.m[2] != 2)
    printf ("ng\n");
  if (s1.m[3] != 3)
    printf ("ng\n");
  if (s1.m[4] != 4)
    printf ("ng\n");
  if (s1.m[5] != 5)
    printf ("ng\n");
  if (s1.m[6] != 6)
    printf ("ng\n");
  if (s1.m[7] != 7)
    printf ("ng\n");
  if (s1.m[8] != 8)
    printf ("ng\n");
  if (s1.m[9] != 9)
    printf ("ng\n");
  if (lcount != 100)
    printf ("ng\n");
  printf("***** unroll052 ***** end\n");
}
