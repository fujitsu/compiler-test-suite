#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  int m2=-2, m1=-1, ze=0, one=1, two=2, five=5;
  int eig=8, nine=9, ten=10, ele=11;
  for (i = 0; i <= 9; i++)
    {
      if (i == -1) fatal_error ();
      if (i == 10) fatal_error ();
    }
  if (i != 10)
    fatal_error ();
  else
    printf("OK\n");
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
