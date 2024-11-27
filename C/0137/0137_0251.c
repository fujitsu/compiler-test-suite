#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  int k=0;
  int m2 = -2, m1 = -1, ze = 0, one = 1, five = 5, six = 6 ;
  int eig = 8, nine = 9, ten = 10, ele = 11;
  for (i = k; i < 10; i++)
    {
      if (i == 0 ) printf("OK\n");
      if (i == 11 ) printf("error\n");
    }
  if (i != 10)
    fatal_error ();
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
