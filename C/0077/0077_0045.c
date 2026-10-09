#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdarg.h>

#if defined(__GNUC__) && !defined(__clang__)
static int max(int x, ...)
#else
static ATTR(always_inline) int max(int x, ...)
#endif
{
  int y;
  va_list ap;
  va_start(ap,x);
  y = va_arg(ap,int);
  return x > y ? x : y;
}
int main()
{
   if( max(0,1) != 1 ) puts("NG1");
   if( max(1,0) != 1 ) puts("NG2");
   puts("OK");
}

