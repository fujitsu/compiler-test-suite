#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int   a[5] ;
  int   b;

  printf("********** 06 TEST START **********\n");

  b=1;
  a[0] = 1 ;
  a[1] = b ;
  a[2] = b+1 ;
  a[3] = a[1]+1 ;
  a[3] = a[1]+b+1;
  b = a[3] ;

  if (a[0] == 1)
      printf("***** 06 - 01 ***** O   K *****\n");
    else
      printf("***** 06 - 01 ***** N   G *****\n");
  if (a[1] == 1)
      printf("***** 06 - 02 ***** O   K *****\n");
    else
      printf("***** 06 - 02 ***** N   G *****\n");
  if (a[2] == 2)
      printf("***** 06 - 03 ***** O   K *****\n");
    else
      printf("***** 06 - 03 ***** N   G *****\n");
  if (a[3] == 3)
      printf("***** 06 - 04 ***** O   K *****\n");
    else
      printf("***** 06 - 04 ***** N   G *****\n");
  if (b == 3)
      printf("***** 06 - 05 ***** O   K *****\n");
    else
      printf("***** 06 - 05 ***** N   G *****\n");

  printf("********** 06 TEST  END  **********\n");
exit (0);
}
