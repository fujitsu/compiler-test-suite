#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int a, int b, int c, int d);
int main() {
int a,b,c,d ;
a = test(1,2,3,4) ;
printf(" mreg0002 result = %d \n",a) ;
if( a == 23 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
exit (0);
}
int test (int a, int b, int c, int d)
{
  a = b + c ;
  b = a + d ;
  c = b + a ;
  d = c + b ;
  return(d) ;
}
