#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int test (int a, int b, int c);
int main() {
int a,b,c ;
printf(" ***** mreg0300 ***** \n") ;
a = test(1,2,3) ;
if( a == 5 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
exit (0);
}
int test (int a, int b, int c)
{
  a = b + c ;
  return(a) ;
}
