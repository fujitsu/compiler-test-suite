#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int a, int b, int c, int d);
int main() {
int a,b,c,d ;
a = test(1,2,3,4) ;
printf(" mreg0003 result = %d \n",a) ;
if( a == 9 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
exit (0);
}
int test (int a, int b, int c, int d)
{
  int e,f,g,h ;

  e = a + b ;
  f = e + c ;
  g = f + 2 ;
  h = g + 1 ;
  return(h) ;
}
