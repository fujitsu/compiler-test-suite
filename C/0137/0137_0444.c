#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub1 (int a);
int sub2 (int a, int b, int c, int d, int e, int f);
int test2 (int a, int b, int c);
int test1 (int a, int b, int c);
int main() {
int a ;
printf(" ***** mreg0331 ***** \n") ;

a = test1(1,2,3) ;

if( a == 1280 )  
  printf(" ** OK **  a = %d \n",a) ;
else
  printf(" ** NG **  a = %d \n",a) ;

a = test2(1,2,3) ;

if( a == 24 )  
  printf(" ** OK **  a = %d \n",a) ;
else
  printf(" ** NG **  a = %d \n",a) ;
exit (0);
}
int test1 (int a, int b, int c)
{
  a = sub1(sub1(sub1(sub1(sub1(sub1(sub1(sub1(b + c)))))))) ;
  return(a) ;
}
int test2 (int a, int b, int c)
{
  a = sub2(sub1(sub1(a)),sub1(sub1(a)),sub1(sub1(a)),sub1(sub1(a)),sub1(sub1(a)),sub1(sub1(a)))  ;
  return(a) ;
}
int sub1 (int a)
{
  return(a+a) ;
}
int sub2 (int a, int b, int c, int d, int e, int f)
{
	return(a+b+c+d+e+f) ;
}
