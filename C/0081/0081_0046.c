#include <stdio.h>
#include <stdarg.h>

void foo(const char *format, ...);
int main()
{
  foo("%d %d\n",1,2);
  foo("%x \n",-1);
  foo("%g %lld\n",3.0,-2LL);
}

void foo(const char *format, ...)
{
   va_list ap;
   va_start(ap,format);
  
   vprintf(format,ap);

   va_end(ap);
}
