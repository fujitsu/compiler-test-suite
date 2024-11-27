#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
  int f(char c)                                                 ;

  printf("********** SCOCV03 TEST STARTED **********\n")    ;

  if (f('a'))
    printf("********** SCOCV03 - 01 OK **********\n")       ;
  else
    printf("********** SCOCV03 - 01 NG **********\n")       ;

  printf("********** SCOCV03 TEST ENDED **********\n")      ;

exit (0);
}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}
