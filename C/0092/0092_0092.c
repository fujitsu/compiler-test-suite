
#include <stdio.h>
int sub(int a, int b, int c, int d, int e, int f, int g, int h);
int test(int a, int b, int c);
int main() {
int a,b,c ;
printf(" *****  ***** \n") ;
a = test(1,2,3) ;
b = test(2,6,4) ;
c = test(3,7,5) ;
printf(" a = %d \n",a) ;
printf(" b = %d \n",b) ;
printf(" c = %d \n",c) ;

a = sub(a,2,b,6,c,1,2,3) ;

if( a == 41 )  
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
int sub(a,b,c,d,e,f,g,h)
int a,b,c,d,e,f,g,h ;
{
  return(a+b+c+d+e+f+g+h) ;
}