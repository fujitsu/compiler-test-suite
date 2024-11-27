
#include <stdio.h>
int test(int a, int b, int c, int d);
int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1,2,3,4) ;
if( a == 3 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** a = %d \n",a) ;
}
int test(a,b,c,d)
int a,b,c,d ;
{

  c = a + b ; 
  a = a * c ;
  d = a - c ;
  a = d + c ;
  if(a!=0) printf(" a = %d  c = %d \n",a,c) ;
  return(a) ;
}
