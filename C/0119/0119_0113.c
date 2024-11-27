#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

union tag  {
           int i  ;
           int c[2] ;
           } ;

union tag u[2] = { 1,2 } ;
int main()
{

  printf("********** SCPII33 TEST START **********\n");

  if (u[0].i == 1 && u[1].i == 2)
      printf(" ***** SCPII33 ***** O   K *****\n");
  else
      printf(" ***** SCPII33 ***** N   G *****\n");

  printf("********** SCPII33 TEST  END  **********\n");

exit (0);
}
