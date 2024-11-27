#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (int L);
struct tag
  {
    int a;
  };
int main (void)
{
  printf("***** unroll064 ***** unroll 1 never 0 not 0\n");
  sub(10);
  printf("***** unroll064 ***** end\n");
exit (0);
}

int sub (int L)
{
  struct tag s1[10];
  struct tag s2[10];
  struct tag tmp;
  int i;
  for (i = 0; i < L; i++)
    {
      s1[i].a = 10 - i;
      s2[i] = s1[i];
    }
  printf ("%d ", s2[0].a);
  printf ("%d ", s2[1].a);
  printf ("%d ", s2[2].a);
  printf ("%d ", s2[3].a);
  printf ("%d ", s2[4].a);
  printf ("%d ", s2[5].a);
  printf ("%d ", s2[6].a);
  printf ("%d ", s2[7].a);
  printf ("%d ", s2[8].a);
  printf ("%d\n", s2[9].a);
  if (s2[0].a != 10)
    printf ("ng\n");
  if (s2[1].a != 9)
    printf ("ng\n");
  if (s2[2].a != 8)
    printf ("ng\n");
  if (s2[3].a != 7)
    printf ("ng\n");
  if (s2[4].a != 6)
    printf ("ng\n");
  if (s2[5].a != 5)
    printf ("ng\n");
  if (s2[6].a != 4)
    printf ("ng\n");
  if (s2[7].a != 3)
    printf ("ng\n");
  if (s2[8].a != 2)
    printf ("ng\n");
  if (s2[9].a != 1)
    printf ("ng\n");
  printf ("ok\n");
  return 1;
}
