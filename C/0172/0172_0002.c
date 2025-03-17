
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo1(int i, ...)
{
  double r8;
  va_list ap;
  va_start(ap,i);
  r8 = (double)va_arg(ap, int);
  printf("%lf\n",r8); 
}

void foo2(int i, ...)
{
  float r4;
  va_list ap;
  va_start(ap,i);
  r4 = (float)va_arg(ap, int);
  printf("%f\n",r4); 
}

void foo3(int i, ...)
{
  long double r10;
  va_list ap;
  va_start(ap,i);
  r10 = (long double)va_arg(ap, int);
  printf("%Lf\n",r10); 
}

void foo4(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  if(((float)va_arg(ap, short))==2.0 )
    puts("ok");
  else
    puts("ng");
}

void foo5(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  if(((double)va_arg(ap, short))==2.0 )
    puts("ok");
  else
    puts("ng");
}

void foo6(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  if(((long double)va_arg(ap, short))==2.0 )
    puts("ok");
  else
    puts("ng");
}

void foo7(int i, ...)
{
  va_list ap;
  va_start(ap,i);
  if(((long double)va_arg(ap, char))==2.0 )
    puts("ok");
  else
    puts("ng");
}
int main()
{
  foo1( 1, 2);
  foo2( 1, 2);
  foo3( 1, 2);
  foo4( 1, 2);
  foo5( 1, 2);
  foo6( 1, 2);
  foo7( 1, 2);
}
