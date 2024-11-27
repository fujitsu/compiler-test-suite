#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int gen_int (int);
void fatal_error (void);
int main()
{
  int i;
  int j;
  int m2 = -2, m1 = -1, ze = 0, one = 1, five = 5, six = 6 ;
  int eig = 8, nine = 9, ten = 10, ele = 11;
  j = gen_int(10);
  for (i = 0; i < 10; i++)
    {
      if (i == j ) printf("error\n");
    }
  if (i != 10)
    fatal_error ();
  else
    printf("OK\n");
exit (0);
}
int gen_int (a)
int a;
{
  return a;
}
void fatal_error ()
{
  printf("NG\n");
}
