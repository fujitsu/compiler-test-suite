#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  int m2 = -2, m1 = -1, ze = 0, one = 1, five = 5, six = 6 ;
  int eig = 8, nine = 9, ten = 10, ele = 11;
  for (i = 9; i > -1; i--)
    {
      if (i <= -2) fatal_error ();
      if (i <= -1) fatal_error ();
      if (i <=  0) printf("OK");
      if (i <=  1) printf("OK");
      if (i <=  5) printf("OK");
      if (i <=  9) printf("OK");
      if (i <= 10) printf("OK");
      if (i <= 11) printf("OK");
      if (m2 >= i) fatal_error ();
      if (m1 >= i) fatal_error ();
      if (ze >=  i) printf("OK");
      if (one >=  i) printf("OK");
      if (five >=  i) printf("OK");
      if (nine >=  i) printf("OK");
      if (ten >= i) printf("OK");
      if (ele >= i) printf("OK");
    }
  if (i != -1)
    fatal_error ();
  printf("\n");
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
