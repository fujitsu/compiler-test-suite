#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

union tag {
          int  i ;
          char c[4] ;
          } ;

union tag u = { 1 } ;
int main()
{

  printf("********** SCPII31 TEST START **********\n");

  if (u.i == 1)
      printf(" ***** SCPII31 ***** O   K *****\n");
  else
      printf(" ***** SCPII31 ***** N   G *****\n");

  printf("********** SCPII31 TEST  END  **********\n");

exit (0);
}
