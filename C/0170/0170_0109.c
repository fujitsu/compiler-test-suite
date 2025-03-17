#include <stdio.h>
int main()
{
  int i;
  printf("***** unroll068 ***** unroll 1 never 0 not 0\n");
  printf ("1 2 3 4 5 6 7\n");
  for (i = 1; i < 8; i++)
    printf ("%d ", i);
  printf ("\n");
  printf("***** unroll068 ***** end\n");
}
