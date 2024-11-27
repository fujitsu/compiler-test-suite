#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int a ;
  int b ;
  int func();

  printf("********** 03 TEST START **********\n");

  a=1 ;
  b=func(a);

  if (a == 1)
      printf("***** 03 - 01 ***** O   K *****\n");
    else
      printf("***** 03 - 01 ***** N   G *****\n");
  if (b == 2)
      printf("***** 03 - 02 ***** O   K *****\n");
    else
      printf("***** 03 - 02 ***** N   G *****\n");

  printf("********** 03 TEST  END  **********\n");
exit (0);
}
int func(x)
int x ;
{
  x=x+1;
  return (x);
}
