#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  long double ld ;
  int         i  ;

  printf("********** SCOSCR4 TEST STARTED **********\n") ;

  for (i = 0 ; i< 10 ; i++)
  {
    ld = i       ;
    printf("%s%10.10f","",(double)ld)   ;
    printf("%d"     ,i )   ;
  }

  if ( i = 10 )
    printf("********** SCOSCR4 - 01 OK **********\n") ;
  else
    printf("********** SCOSCR4 - 01 NG **********\n") ;

  printf("********** SCOSCR4 TEST ENDED **********\n") ;

exit (0);
}
