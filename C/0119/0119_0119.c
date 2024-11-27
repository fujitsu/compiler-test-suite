#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct {
       signed char      m1:5 ;
       signed short int m2:12 ;
       signed int       m3:30 ;
       signed long int  m4:29 ;
       } x = { -1,-2,-3,-4 } ;
int main()
{
  printf("***** SCPII40 ***** \n") ;

  printf(" SIGNED CHAR -->") ;
  if (x.m1 == -1)
    printf(" O K \n") ;
  else
    printf(" N G \n") ;

  printf(" SIGNED SHORT -->") ;
  if (x.m2 == -2)
    printf(" O K \n") ;
  else
    printf(" N G \n") ;

  printf(" SIGNED INT   -->") ;
  if (x.m3 == -3)
    printf(" O K \n") ;
  else
    printf(" N G \n") ;

  printf(" SIGNED LONG  -->") ;
  if (x.m4 == -4)
    printf(" O K \n") ;
  else
    printf(" N G \n") ;

  printf("***** E  N  D ***** \n") ;

exit (0);
}
