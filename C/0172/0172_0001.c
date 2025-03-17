
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  printf("%lf\n",(double)va_arg(ap, int));
}

void foo2(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  printf("%Lf\n",(long double)va_arg(ap, int));
}

void foo3(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  printf("%lf\n",(double)(int)(double)va_arg(ap, int));
}

void foo4(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  if((double)va_arg(ap, int) == 2.0)
    puts("ok");
  else
    puts("ng");
}
int main()
{
  foo( 1, 2);
  foo2( 1, 2);
  foo3( 1, 2);
  foo4( 1, 2);
}
