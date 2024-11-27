#include <string.h>
typedef char Str_30[31] ;
Str_30       Str_2_Loc ;

#include <stdio.h>
int test(int a);
int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1) ;
printf(" after test \n") ;
if( a == 11 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(int a)
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
int func1(Str_2_Loc) 
Str_30   Str_2_Loc ;
{
  
  return(11) ;
}
