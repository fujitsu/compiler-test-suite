#include <stdio.h>


struct tag
  {
    int a;
  };
int main()
{
  struct tag s2[10];
  struct tag tmp;
  int i;
  printf("***** unroll054 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i <= 7; i++)
    {
      tmp.a = 10 - i;
      s2[i] = tmp;		
    }
  printf ("%d ", s2[0].a);
  printf ("%d ", s2[1].a);
  printf ("%d ", s2[2].a);
  printf ("%d ", s2[3].a);
  printf ("%d ", s2[4].a);
  printf ("%d ", s2[5].a);
  printf ("%d \n", s2[6].a);
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
  printf ("ok\n");
  printf("***** unroll054 ***** end\n");
  return 1;
}
