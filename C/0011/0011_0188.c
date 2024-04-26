#include  <stdio.h>
/* scpld01
 *
 *
 *
 *
 *
 */
#ifdef NO_LONG_DOUBLE
double f1() ;
double f2() ;
double f3() ;
double f4() ;
double f5() ;
int main()
{
  double a,(*p)() ;
#else
long double f1() ;
long double f2() ;
long double f3() ;
long double f4() ;
long double f5() ;
int main()
{
  long double a,(*p)() ;
#endif
  printf("SCPLD01 START \n") ;
  a = f1(1,2,3,4.0) ;
  if (a == 1.0) printf("  F1 = OK \n") ;
  else          printf("  F1 = NG \n") ;

  p = f4 ;
  a = (*p)() ;
  p = f5 ;
#ifdef NO_LONG_DOUBLE
  a = (*p)((double)2) ;
#else
  a = (*p)((long double)2) ;
#endif
  if (a == 2.0) printf("  F5 = OK \n") ;
  else          printf("  F5 = NG \n") ;

  printf("SCPLD01  END  \n") ;
}
#ifdef NO_LONG_DOUBLE
double f1(a,b,c,d)
#else
long double f1(a,b,c,d)
#endif
int    a,b,c ;
double d     ;
{
#ifdef NO_LONG_DOUBLE
  double e ;
  f3(b) ;
  e = f2((double)c) ;
#else
  long double e ;
  f3(b) ;
  e = f2((long double)c) ;
#endif
  if (e == 6.0) printf("  F2 = OK \n") ;
  else          printf("  F2 = NG \n") ;
  return a ;
}
#ifdef NO_LONG_DOUBLE
double f2(a)
double a ;
{
  double b = a ;
#else
long double f2(a)
long double a ;
{
  long double b = a ;
#endif
  if (a > 0) b += f2(a-1) ;
  return b ;
}
#ifdef NO_LONG_DOUBLE
double f3(a)
#else
long double f3(a)
#endif
int a ;
{
  printf("  F3 = OK \n") ;
#ifdef NO_LONG_DOUBLE
  return (double)a ;
#else
  return (long double)a ;
#endif
}
#ifdef NO_LONG_DOUBLE
double f4()
#else
long double f4()
#endif
{
  printf("  F4 = OK \n") ;
#ifdef NO_LONG_DOUBLE
  return (double)1 ;
#else
  return (long double)1 ;
#endif
}
#ifdef NO_LONG_DOUBLE
double f5(a)
double a ;
#else
long double f5(a)
long double a ;
#endif
{
  return a ;
}
