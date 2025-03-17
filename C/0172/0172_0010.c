#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(double i, ...)
{
  va_list ap;
  va_start(ap,i);
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
  printf("%d\n",va_arg(ap, int));
  printf("%lf\n",va_arg(ap, double));
}
int main()
{
  foo( 1.0, 2, 3.0, 4, 5.0, 6, 7.0, 8, 9.0, 10, 11.0, 12, 13.0, 14, 15.0,
       16, 17.0);
}

