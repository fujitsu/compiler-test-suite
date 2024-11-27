#include <stdio.h>
int test(int a, int b, int c, int d);

int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1,2,3,4) ;
if( a == 406 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** a = %d \n",a) ;
}
int test(a,b,c,d)
int a,b,c,d ;
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
