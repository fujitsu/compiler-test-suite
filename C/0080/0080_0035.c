#include <stdio.h>
#include <stdarg.h>

void vsub(int arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",va_arg(ap,int));
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   vsub(1,2);

  return 0;
}
