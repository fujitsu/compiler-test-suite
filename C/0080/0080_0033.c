#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",(int )va_arg(ap,double));
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   double d = 2.0;
   vsub(1,d);

  return 0;
}
