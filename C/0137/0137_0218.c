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
      if (i > -1) printf("OK\n");
      if (i > 0) printf("OK\n");
      if (i > 1) printf("OK\n");
      if (i > 8) printf("OK\n");
      if (i > 9) fatal_error ();
      if (i > 10) fatal_error ();
      if (i > 11) fatal_error ();
      if (m1 < i) printf("OK\n");
      if (ze < i) printf("OK\n");
      if (one < i) printf("OK\n");
      if (eig < i) printf("OK\n");
      if (nine < i) fatal_error ();
      if (ten < i) fatal_error ();
      if (ele < i) fatal_error ();
    }
  if (i != -1)
    fatal_error ();
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}