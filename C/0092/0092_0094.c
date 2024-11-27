
#include <stdio.h>
int sub1(int a);
int test(int a, int b, int c);
int main() {
int a ;
printf(" *****  ***** \n") ;

a = test(1,2,3) ;

if( a == 225 )  
  printf(" ** OK **  a = %d \n",a) ;
else
  printf(" ** NG **  a = %d \n",a) ;
}
int test(a,b,c)
int a,b,c ;
{
  int d,e,f ;

  a = b + c ;
  b = sub1(a) ;
  c = b + a*a ;
  d = sub1(c) ;
  e = d + b*a ;
  f = sub1(a) ;
  a = e + d + c ;
  return(a) ;
}
int sub1(a)
int a ;
{
  return(a+a) ;
}
