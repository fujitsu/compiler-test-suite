#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define M(x)  x
int main()
{
  int a, b, c;
  a = 10 ;
  b = 9 ;

  c = a M(-)-- b;
  if (c == 2) printf("ok\n");
  else  printf("ng\n");
exit (0);
}
