#include <stdio.h>

int main()
{
  int a = 0, b = 0;
  int i;
  printf("***** unroll032 ***** unroll 1 never 0 not 0\n");
  for (i = 0; i < 9; i++, a++, b++)
    ;
  if (a != 9)
    printf ("ng 9=%d\n", a);
  if (b != 9)
    printf ("ng 9=%d\n", b);
  printf ("ok\n");
  printf("***** unroll032 ***** end\n");
}
