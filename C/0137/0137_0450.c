#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
typedef char Str_30[31] ;
Str_30       Str_2_Loc ;
int test (int a);
int func1(Str_30 Str_2_Loc);
int main (void) {
int a ;
printf(" ***** mreg0370 ***** \n") ;
a = test(1) ;
printf(" after test \n") ;
if( a == 11 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
exit (0);
}
int test (int a)
{
  int func1() ;

  printf(" before strcpy \n") ;
  strcpy(Str_2_Loc, " test test ") ;
  printf(" after strcpy \n") ;
  a = func1(Str_2_Loc) ;
  printf(" after func1 \n") ;
  printf(" a = %d \n",a) ;

  return(a) ;
}
int func1(Str_30 Str_2_Loc)
{
  return(11) ;
}
