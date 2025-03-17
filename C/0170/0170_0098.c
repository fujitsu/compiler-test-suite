#include <stdio.h>


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

  printf("***** unroll057 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i <= 4; i++)
    {
      s1[i] = s2[i];
    }
  printf ("%d ", s1[0].a);
  printf ("%d ", s1[1].a);
  printf ("%d ", s1[2].a);
  printf ("%d \n", s1[3].a);
  if (s2[0].a != 10)
    printf ("ng\n");
  if (s2[1].a != 9)
    printf ("ng\n");
  if (s2[2].a != 8)
    printf ("ng\n");
  if (s2[3].a != 7)
    printf ("ng\n");
  printf ("ok\n");
  printf("***** unroll057 ***** end\n");
  return 1;
}
