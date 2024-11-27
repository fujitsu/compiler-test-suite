#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int  a ;
  int  x ;

  printf("********** 09 TEST START **********\n");

  x=0;                       
 for (a=0; a<3; ++a)
 {
  switch(a)
  {
    case 0  : x=x+1 ;
    case 1  : x=x+2 ;
              break ;
    default : x=x+3 ;
  }
 }

  if (a == 3)
      printf("***** 09 - 01 ***** O   K *****\n");
    else
      printf("***** 09 - 01 ***** N   G *****\n");
  if (x == 8)
      printf("***** 09 - 02 ***** O   K *****\n");
    else
      printf("***** 09 - 02 ***** N   G *****\n");

  printf("********** 09 TEST  END  **********\n");
exit (0);
}
