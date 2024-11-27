#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);






#if defined(__GNUC__)
   printf("%d,",(int )va_arg(ap,double));
#else
   printf("%d,",(int )va_arg(ap,float));
#endif
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   float f = 2;
   vsub(1,f);

  return 0;
}
