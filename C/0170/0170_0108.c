#include <stdio.h>
int main()
{
  int i;
  printf("***** unroll067 ***** unroll 1 never 0 not 0\n");
  printf ("1 2 3 4 5 6\n");
  for (i = 1; i < 7; i++)
    printf ("%d ", i);
  printf ("\n");
  printf("***** unroll067 ***** end\n");
}
