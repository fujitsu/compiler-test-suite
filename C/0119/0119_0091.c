#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

union tag {
          int  i ;
          char c[4] ;
          } ;
int main()
{
  static union tag u = { 1 } ;


  printf("********** SCPII07 TEST START **********\n");

  if (u.i == 1)
      printf(" ***** SCPII07 ***** O   K *****\n");
  else
      printf(" ***** SCPII07 ***** N   G *****\n");

  printf("********** SCPII07 TEST  END  **********\n");

exit (0);
}
