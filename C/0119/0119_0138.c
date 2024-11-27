#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

long double f1() ;
long double f2() ;
long double f3() ;
long double f4() ;
long double f5() ;
int main()
{
  long double a,(*p)() ;

  printf("SCPLD01 START \n") ;
  a = f1(1,2,3,4.0) ;
  if (a == 1.0) printf("  F1 = OK \n") ;
  else          printf("  F1 = NG \n") ;

  p = f4 ;
  a = (*p)() ;
  p = f5 ;
  a = (*p)((long double)2) ;
  if (a == 2.0) printf("  F5 = OK \n") ;
  else          printf("  F5 = NG \n") ;

  printf("SCPLD01  END  \n") ;
exit (0);
}

long double f1(a,b,c,d)
int    a,b,c ;
double d     ;
{
  long double e ;
  f3(b) ;
  e = f2((long double)c) ;
  if (e == 6.0) printf("  F2 = OK \n") ;
  else          printf("  F2 = NG \n") ;
  return a ;
}

long double f2(a)
long double a ;
{
  long double b = a ;

  if (a > 0) b += f2(a-1) ;
  return b ;
}

long double f3(a)
int a ;
{
  printf("  F3 = OK \n") ;
  return (long double)a ;
}

long double f4()
{
  printf("  F4 = OK \n") ;
  return (long double)1 ;
}

long double f5(a)
long double a ;
{
  return a ;
}
