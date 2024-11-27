#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag
  {
    int a;
  };
int main()
{
  struct tag s2[10];
  struct tag tmp;
  int i;
  printf("***** unroll053 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i <= 4; i++)
    {
      tmp.a = 10 - i;
      s2[i] = tmp;		
    }
  printf ("%d ", s2[0].a);
  printf ("%d ", s2[1].a);
  printf ("%d ", s2[2].a);
  printf ("%d ", s2[3].a);
  printf ("\n");
  if (s2[0].a != 10)
    printf ("ng\n");
  if (s2[1].a != 9)
    printf ("ng\n");
  if (s2[2].a != 8)
    printf ("ng\n");
  if (s2[3].a != 7)
    printf ("ng\n");
  printf ("ok\n");
  printf("***** unroll053 ***** end\n");
exit (0);
}
