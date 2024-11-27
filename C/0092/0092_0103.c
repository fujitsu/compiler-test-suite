#include <stdio.h>
int cal(int c);
int set(int c);
int test(int a);


int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1) ;
printf(" a = %d \n",a) ;
if( a == 64 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(a)
int a ;
{
  int a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16 ;
  int b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16 ;
  int x,y ;

  a1 = set(a) ;
  a2 = set(a) ;
  a3 = set(a) ;
  a4 = set(a) ;
  a5 = set(a) ;
  a6 = set(a) ;
  a7 = set(a) ;
  a8 = set(a) ;
  a9 = set(a) ;
  a10 = set(a) ;
  a11 = set(a) ;
  a12 = set(a) ;
  a13 = set(a) ;
  a14 = set(a) ;
  a15 = set(a) ;
  a16 = set(a) ;
  b1 = set(a) ;
  b2 = set(a) ;
  b3 = set(a) ;
  b4 = set(a) ;
  b5 = set(a) ;
  b6 = set(a) ;
  b7 = set(a) ;
  b8 = set(a) ;
  b9 = set(a) ;
  b10 = set(a) ;
  b11 = set(a) ;
  b12 = set(a) ;
  b13 = set(a) ;
  b14 = set(a) ;
  b15 = set(a) ;
  b16 = set(a) ;
  x=cal(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15+a16) ;
  y=cal(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12+b13+b14+b15+b16) ;
  return(x+y) ;
}
int set(c) 
int c ;
{
  return(c) ;
}
int cal(c)
int c ;
{
  return(2*c) ;
}
