#include <stdio.h>
#define M(x)  x
int main()
{
  int a, b, c;
  a = 10 ;
  b = 9 ;

  c = a M(-)-- b;
  if (c == 2) printf("ok");
  else  printf("ng");
}
