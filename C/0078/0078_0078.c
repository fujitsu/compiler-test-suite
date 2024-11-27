#include <stdio.h>
#include <stdarg.h>

typedef   int      test11_t;
#if defined(__SUNPRO_C)
typedef   float    test12_t;
#else
typedef   double   test12_t;
#endif
typedef   long     test13_t;
typedef   double   test14_t;

void foo1(int a1,int a2, ...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a1,a2);

   {
      test11_t a5=va_arg(ap,test11_t);
      test12_t a6=va_arg(ap,test12_t);
      test13_t a7=va_arg(ap,test13_t);
      test14_t a8=va_arg(ap,test14_t);
      printf("%d,%d,%d,%d\n",(int )a5,(int )a6,(int )a7,(int )a8);
   }
}

int main()
{
   foo1(1,2,(test11_t)5,(test12_t)6,(test13_t)7,(test14_t)8);
}
