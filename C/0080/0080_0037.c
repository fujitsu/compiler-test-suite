#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",va_arg(ap,long));
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   vsub(1,2L);

  return 0;
}
