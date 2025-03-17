#include <stdio.h>
struct t
  {
    int m[1003];
  };
int main()
{
  int lcount;
  struct t s1, s2;

  printf("***** unroll049 ***** unroll 1 never 0 not 0\n");
  for (lcount = 0; lcount < 5; lcount++)
    s1.m[lcount] = lcount;
  printf ("%d ", s1.m[0]);
  printf ("%d ", s1.m[1]);
  printf ("%d ", s1.m[2]);
  printf ("%d ", s1.m[3]);
  printf ("%d \n", s1.m[4]);
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
  if (lcount != 5)
    printf ("ng\n");
  printf("***** unroll049 ***** end\n");
}
