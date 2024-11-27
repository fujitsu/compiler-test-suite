#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  for (i = 0; i < 10; i++)
    {
      if (i >= -1) printf("OK\n");
      if (i >=  0) printf("OK\n");
      if (i >=  1) printf("OK\n");
      if (i >=  8) printf("OK\n");
      if (i >=  9) printf("OK\n");
      if (i >= 10) fatal_error ();
      if (i >= 11) fatal_error ();
    }
  if (i != 10)
    fatal_error ();
exit (0);
}
void fatal_error ()
{
  printf("NG\n");
}
