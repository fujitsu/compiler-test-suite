#include <stdio.h>

int main() {
float a,b,c,test() ;
printf(" *****  ***** \n") ;
a = test(1.0,2.0,3.0) ;
if( a == 5.0 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
float test(a,b,c)
float a,b,c ;
{
  a = b + c ;
  return(a) ;
}
