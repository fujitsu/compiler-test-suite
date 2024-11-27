#include <stdio.h>
void fatal_error (void);
int main()
{
  int i;
  for (i = 0; i < 10; i++)
    {
      if (i == -1) fatal_error ();
      if (i == 0 ) printf("OK\n");
      if (i == 5 ) printf("OK\n");
      if (i == 9 ) printf("OK\n");
      if (i == 10 ) fatal_error ();
      if (i == 11) fatal_error ();
    }
  if (i != 10)
    fatal_error ();
}
void fatal_error ()
{
  printf("NG\n");
}
