#include <stdio.h>

int main()
{
  long double ld ;
  int         i  ;

  printf("********** TEST STARTED **********\n") ;

  for (i = 0 ; i< 10 ; i++)
  {
    ld = i       ;
    printf("%s%10.10f","",(double)ld)   ;
    printf("%d"     ,i )   ;
  }

  if ( i == 10 )
    printf("********** 01 OK **********\n") ;
  else
    printf("********** 01 NG **********\n") ;

  printf("********** TEST ENDED **********\n") ;

}
