

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long long int 
sub (i)
     int i;
{
  return (long long int) i;
}
int main()
{
  char *x = (char *) malloc (20);
  long long int a;
  long long int b;
  int i;
  a = sub (5);
  b = sub (5);
  sprintf (x, "test1");
  for (i = 0; i < 10; i++)
    {
      a = sub (5);
      b = sub (5);
      
      memcpy (x + a, x, (int) b);
    }
  a = sub (2);
  if (x[a] == x[a + 5])
    puts ("ok");
  else
    puts ("ng");

  free(x);
}
