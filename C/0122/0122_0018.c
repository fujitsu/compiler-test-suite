#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int   a;                  
  int   x;

  printf("********** 05 TEST START **********\n");

  a=0;                      
  x=0;                      
  while (a<10)
  {
    x=x+1  ;
    a=a+1;                  
  }

  if (a == 10)
      printf("***** 05 - 01 ***** O   K *****\n");
    else
      printf("***** 05 - 01 ***** N   G *****\n");
  if (x == 10)
      printf("***** 05 - 02 ***** O   K *****\n");
    else
      printf("***** 05 - 02 ***** N   G *****\n");

  printf("********** 05 TEST  END  **********\n");
exit (0);
}
