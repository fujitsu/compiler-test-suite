#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  for (i = 0; i <= 9; i++)
    {
      if (i <= -1) fatal_error ();
      if (i <=  0) printf("OK\n");
      if (i <=  1) printf("OK\n");
      if (i <=  8) printf("OK\n");
      if (i <=  9) printf("OK\n");
      if (i <= 10) printf("OK\n");
      if (i <= 11) printf("OK\n");
      if (-1 >= i) fatal_error ();
      if (0 >=  i) printf("OK\n");
      if (1 >=  i) printf("OK\n");
      if (8 >=  i) printf("OK\n");
      if (9 >=  i) printf("OK\n");
      if (10 >=  i) printf("OK\n");
      if (11 >=  i) printf("OK\n");
    }
  if (i != 10)
    fatal_error ();
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
