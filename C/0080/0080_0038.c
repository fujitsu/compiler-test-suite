#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",(int )va_arg(ap,long double));
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
  long double ld = 2.0;
   vsub(1,ld);

  return 0;
}
