#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void fatal_error (void);
int main()
{
  int i;
  i = 0;
  while (i <= 9)
    {
      if (i <= -20) fatal_error ();
      if (i <= -19) fatal_error ();
      if (i <= -18) fatal_error ();
      if (i <= -17) fatal_error ();
      if (i <= -16) fatal_error ();
      if (i <= -15) fatal_error ();
      if (i <= -14) fatal_error ();
      if (i <= -13) fatal_error ();
      if (i <= -12) fatal_error ();
      if (i <= -11) fatal_error ();
      if (i <= -10) fatal_error ();
      if (i <= -9) fatal_error ();
      if (i <= -8) fatal_error ();
      if (i <= -7) fatal_error ();
      if (i <= -6) fatal_error ();
      if (i <= -5) fatal_error ();
      if (i <= -4) fatal_error ();
      if (i <= -3) fatal_error ();
      if (i <= -2) fatal_error ();
      if (i <= -1) fatal_error ();
      i++;
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
