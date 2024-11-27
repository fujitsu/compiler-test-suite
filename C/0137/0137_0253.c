#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i,j;
  int k=0;
  int m2 = -2, m1 = -1, ze = 0, one = 1, five = 5, six = 6 ;
  int eig = 8, nine = 9, ten = 10, ele = 11;
  j = k;	
  for (i = k; i < j; i--)
    {
      if (i == 5 ) fatal_error ();
    }
  if (i != 0)
    fatal_error ();
  else
    printf("OK\n");
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
