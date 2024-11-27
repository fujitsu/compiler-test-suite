
#include <stdio.h>
int test(int a, int b, int c, int d);
int main() {
int a,b,c,d ;
a = test(1,2,3,4) ;
printf("  result = %d \n",a) ;
if( a == 23 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(a,b,c,d)
int a,b,c,d ;
{
  a = b + c ;
  b = a + d ;
  c = b + a ;
  d = c + b ;
  return(d) ;
}
