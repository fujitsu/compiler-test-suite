#include <stdio.h>
int test(int a, int b, int c, int d);

int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1,2,3,4) ;
if( a == 5184 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** a = %d \n",a) ;
}
int test(a,b,c,d)
int a,b,c,d ;
{
  if( a == b ) {
     c = a + b ;
     d = c * a ;
     if ( a != c ) {
       c = d * a ;
       a = c - d ;
       if ( a*c ) a = c * c ;
     }
     else
     {
       d = c * a ;
     }
  }
  else {
     a = c + b*c ;
     c = a - c ;
     if ( a != c ) {
       c = d * a ;
       a = c - d ;
       if ( a*c ) {
	 a = c * c ;
       }
     }
     else 
     {
       d = a * c ;
     }
  }
  return(a*d) ;
}
