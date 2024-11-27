#include <stdio.h>

double test1_param(double x, double y)
{
#if defined(__GNUC__) && (defined(i386) || defined(__x86_64__))
  asm volatile ("f2xm1"  : "=t"(x)  : "0"(x));
  return x;
#else
  return 100;
#endif
}

double test2_param(double x, double y)
{
#if defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
  asm volatile ("fpatan" : "=t"(x)  : "0"(x), "u" (y) : "st(1)");
  return x;
#else
  return -0.21655;
#endif
}

double test3_param(double x, double y)
{
#if defined(__GNUC__) & (defined(i386) || defined(__x86_64__))
  asm volatile ("fptan"  : "=t"(x),"=u"(y) : "0"(x));
  return x+y;
#else
  return 0.412786;
#endif
}
int main()
{
   double x;
   x=test1_param(100., -22.); if(x != (double )100.0) puts("NG1");
   x=test2_param(100., -22.); if((x-(-0.21655F))/x > 0.00001) puts("NG2");
   x=test3_param(100., -22.); if((x-(0.412786F))/x > 0.00001) puts("NG3");
   puts("OK");
}
