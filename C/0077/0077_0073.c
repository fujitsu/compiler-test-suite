#include <stdio.h>
double x,y;

void test1_global()
{
#if  defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
  asm volatile ("f2xm1"  : "=t"(x)  : "0"(x));
#endif
}

void test2_global()
{
#if  defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
  asm volatile ("fpatan" : "=t"(x)  : "0"(x), "u" (y) : "st(1)");
#endif
}

void test3_global()
{
#if  defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
  asm volatile ("fptan"  : "=t"(x),"=u"(y) : "0"(x));
#endif
}
int main()
{
#if  defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
   x=1; y=2; test1_global();
  if( x != 1. || y != 2. ) puts("NG1");
   x=1; y=2; test2_global();
  if( (x-1.10715)/x > 0.00001 || y != 2. ) puts("NG2");
   x=1; y=2; test3_global();
  if( x != 1. || (y-1.55741)/y > 0.00001 ) puts("NG3");
#endif
  puts("OK");
}
