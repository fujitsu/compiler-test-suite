#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int a, int b, int c, int d);
int main() {
int a ;
printf(" ***** mreg0103 ***** \n") ;
a = test(1,2,3,4) ;
if( a == 406 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** a = %d \n",a) ;
exit (0);
}
int test (int a, int b, int c, int d)
{
  int i ;
  for ( i=1; i<100; i++) {
     a += 1 ;
     b += 1 ;
     c += 1 ;
     d += 1 ;
  }
  return(a+b+c+d) ;
}
