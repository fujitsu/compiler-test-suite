#include  <stdio.h>
/* scpld01
 *
 *
 *
 *
 *
 */
#ifdef NO_LONG_DOUBLE
double f1(int a, int b, int c, double d) ;
double f2(double a) ;
double f3(int a) ;
double f4(void) ;
double f5(double a) ;
int main()
{
  double a,(*p4)(void), (*p5)(double) ;
#else
long double f1(int a, int b, int c, double d) ;
long double f2(long double a) ;
long double f3(int a) ;
long double f4(void) ;
long double f5(long double a) ;
int main()
{
  long double a,(*p4)(void), (*p5)(long double) ;
#endif
  printf("SCPLD01 START \n") ;
  a = f1(1,2,3,4.0) ;
  if (a == 1.0) printf("  F1 = OK \n") ;
  else          printf("  F1 = NG \n") ;

  p4 = f4 ;
  a = (*p4)() ;
  p5 = f5 ;
#ifdef NO_LONG_DOUBLE
  a = (*p5)((double)2) ;
#else
  a = (*p5)((long double)2) ;
#endif
  if (a == 2.0) printf("  F5 = OK \n") ;
  else          printf("  F5 = NG \n") ;

  printf("SCPLD01  END  \n") ;
}
#ifdef NO_LONG_DOUBLE
double f1(int a, int b, int c, double d)
#else
long double f1(int a, int b, int c, double d)
#endif
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
double f2(double a)
{
  double b = a ;
#else
long double f2(long double a)
{
  long double b = a ;
#endif
  if (a > 0) b += f2(a-1) ;
  return b ;
}
#ifdef NO_LONG_DOUBLE
double f3(int a)
#else
long double f3(int a)
#endif
{
  printf("  F3 = OK \n") ;
#ifdef NO_LONG_DOUBLE
  return (double)a ;
#else
  return (long double)a ;
#endif
}
#ifdef NO_LONG_DOUBLE
double f4(void)
#else
long double f4(void)
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
double f5(double a)
#else
long double f5(long double a)
#endif
{
  return a ;
}
