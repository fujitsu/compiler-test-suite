#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(long double i, ...)
{
  long double r16;
  va_list ap;
  va_start(ap,i);
  printf("%Lf\n",(long double)va_arg(ap, long double));
  printf("%lf\n",(double)va_arg(ap, long double));
  printf("%f\n",(float)va_arg(ap, long double));
}
int main()
{
  foo(10.0L, 20.0L, 30.0L, 40.0L);
}
