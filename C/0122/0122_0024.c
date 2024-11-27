#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int a ;
  int b ;
#ifdef __STDC__
  int func(int);
#else
  int func();
#endif

  printf("********** 11 TEST START **********\n");

  a=1 ;
  b=func(a);

  if (a == 1)
      printf("***** 11 - 01 ***** O   K *****\n");
    else
      printf("***** 11 - 01 ***** N   G *****\n");
  if (b == 2)
      printf("***** 11 - 02 ***** O   K *****\n");
    else
      printf("***** 11 - 02 ***** N   G *****\n");

  printf("********** 11 TEST  END  **********\n");
exit (0);
}
#ifdef __STDC__
int func(int x)
#else
int func(x) int x;
#endif
{
  x=x+1;
  return (x);
}
