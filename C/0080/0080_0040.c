#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);







#if defined(__GNUC__)
   printf("%d,",va_arg(ap,unsigned));
#else
   printf("%d,",va_arg(ap,unsigned short));
#endif
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   vsub(1,2);

  return 0;
}
