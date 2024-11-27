
#include <stdio.h>
int test(int a, int b, int c);
int main() {
int a,b,c ;
a = test(1,2,3) ;
printf("  result = %d \n",a) ;
if( a == 5 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(a,b,c)
int a,b,c ;
{
  a = b + c ;
  return(a) ;
}
