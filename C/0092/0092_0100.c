#include <string.h>
#include <stdio.h>
typedef char Str_30[31] ;
Str_30       Str_1_Loc ;
Str_30       Str_2_Loc ;

int func2(int a, Str_30 Str_1_Loc, Str_30 Str_2_Loc);
int test(int a);
int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1) ;
if( a == 22 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(int a)
{
  int func1() ;

  strcpy(Str_1_Loc, " test tes1 ") ;
  strcpy(Str_2_Loc, " test tes2 ") ;
  a = func1(Str_1_Loc,Str_2_Loc) ;
  a = func2(a,Str_1_Loc,Str_2_Loc) ;

  return(a) ;
}
int func1(Str_1_Loc,Str_2_Loc) 
Str_30   Str_1_Loc ;
Str_30   Str_2_Loc ;
{
  
  return(11) ;
}
int func2(int a, Str_30 Str_1_Loc, Str_30 Str_2_Loc)
{
  
  return(a+11) ;
}
