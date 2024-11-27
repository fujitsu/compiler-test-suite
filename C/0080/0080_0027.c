#include <stdio.h>
#include <stdarg.h>

void vsub(int arg1,int arg2,int arg3, ...)
{
   va_list ap;
   va_start(ap,arg3);

   printf("%d,",arg1);
   printf("%d,",arg2);
   printf("%d,",arg3);
   printf("%d,",va_arg(ap,int));
   printf("%d,",(int )va_arg(ap,long long));
#if defined(__GNUC__)
   printf("%d,",(int )va_arg(ap,double));
#else
   printf("%d,",(int )va_arg(ap,float));
#endif
   printf("%d,",(int )va_arg(ap,double));
   printf("%d\n",(int )va_arg(ap,long double));

   va_end(ap);
}

int main()
{
   int i = 2;
   long long int l = 3;
   float f = 4;
   double d = 5;
   long double q =6;

   vsub(-1,0,1,i,l,f,d,q);

  return 0;
}




