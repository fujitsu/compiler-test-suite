#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct t
  {
    int m[1003];
  };
int main()
{
  int lcount;
  static struct t s1, s2;

  printf("***** unroll051 ***** unroll 1 never 0 not 0\n");
  for (lcount = 0; lcount < 7; lcount++)
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
  printf ("%d \n", s1.m[9]);
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
  if (s1.m[7] != 0)
    printf ("ng\n");
  if (s1.m[8] != 0)
    printf ("ng\n");
  if (s1.m[9] != 0)
    printf ("ng\n");
  if (lcount != 7)
    printf ("ng\n");
  printf("***** unroll051 ***** end\n");
exit (0);
}
