#include <stdio.h>
#include <stdarg.h>

void vsub(int i1,int i2,int i3,int i4,int i5,int i6,int arg, ...)
{
   va_list ap;
   va_start(ap,arg);

   printf("%d,",va_arg(ap,int));
   printf("%d\n",arg);
   va_end(ap);
}

int main()
{
   vsub(1,2,3,4,5,6,7,8);

  return 0;
}
