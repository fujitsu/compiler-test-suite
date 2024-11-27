#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

union tag  {
           int i  ;
           int c[2] ;
           } ;
int main()
{
  static union tag u[2] = { 1,2 } ;


  printf("********** SCPII09 TEST START **********\n");

  if (u[0].i == 1 && u[1].i == 2)
      printf(" ***** SCPII09 ***** O   K *****\n");
  else
      printf(" ***** SCPII09 ***** N   G *****\n");

  printf("********** SCPII09 TEST  END  **********\n");

exit (0);
}
