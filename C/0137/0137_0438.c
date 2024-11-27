#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int a, int b, int c);
int main() {
int a,b,c ;
a = test(1,2,3) ;
printf(" mreg0200 result = %d \n",a) ;
if( a == 150 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
exit (0);
}
int test (int a, int b, int c)
{
  a = b + c ;
  b = a * c ;
  c = b - a ;
  a = c * b ;
  return(a) ;
}
