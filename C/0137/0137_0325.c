#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag
  {
    int a;
  };
int main()
{
  struct tag s1[10];
  static struct tag s2[10] =
  {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
  struct tag tmp;
  int i;

  printf("***** unroll059 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i <= 8; i++)
    {
      s1[i] = s2[i];
    }
  printf ("%d ", s1[0].a);
  printf ("%d ", s1[1].a);
  printf ("%d ", s1[2].a);
  printf ("%d ", s1[3].a);
  printf ("%d ", s1[4].a);
  printf ("%d ", s1[5].a);
  printf ("%d ", s1[6].a);
  printf ("%d ", s1[7].a);
  printf ("%d \n", s1[8].a);
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
  printf ("ok\n");
  printf("***** unroll059 ***** end\n");
exit (0);
}
