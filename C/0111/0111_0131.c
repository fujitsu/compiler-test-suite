#include <stdio.h>
void fatal_error (void);
int main()
{
  int i;
  i = 0;
  while (i < 10)
    {
      if (i >= 10) fatal_error ();
      if (i >= 11) fatal_error ();
      if (i >= 12) fatal_error ();
      if (i >= 13) fatal_error ();
      if (i >= 14) fatal_error ();
      if (i >= 15) fatal_error ();
      if (i >= 16) fatal_error ();
      if (i >= 17) fatal_error ();
      if (i >= 18) fatal_error ();
      if (i >= 20) fatal_error ();
      if (i >= 21) fatal_error ();
      if (i >= 22) fatal_error ();
      if (i >= 23) fatal_error ();
      if (i >= 24) fatal_error ();
      if (i >= 25) fatal_error ();
      if (i >= 26) fatal_error ();
      if (i >= 27) fatal_error ();
      if (i >= 28) fatal_error ();
      if (i >= 29) fatal_error ();
      if (i >= 30) fatal_error ();
      i++;
    }
  if (i != 10)
    fatal_error ();
  else
    printf("OK\n");
}
void fatal_error ()
{
  printf("NG\n");
}
