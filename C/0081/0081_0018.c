#include <stdio.h>
#include <stdarg.h>

#if defined(__i386) || defined(__x86_64__) || defined(__aarch64__)

typedef   int    test11_t;
typedef   int    test21_t;
typedef   int    test31_t;
#else
typedef   char   test11_t;
typedef   char   test21_t;
typedef   char   test31_t;
#endif
typedef   int   test12_t;
typedef   int   test13_t;
typedef   int   test14_t;

typedef   double   test22_t;
typedef   int   test23_t;
typedef   int   test24_t;

typedef   long long int   test32_t;
typedef   int   test33_t;
typedef   int   test34_t;

void foo1(int a1,int a2,...)
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

void foo2(int a1,int a2,...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a1,a2);

   {
      test21_t a5=va_arg(ap,test21_t);
      test22_t a6=va_arg(ap,test22_t);
      test23_t a7=va_arg(ap,test23_t);
      test24_t a8=va_arg(ap,test24_t);
      printf("%d,%d,%d,%d\n",(int )a5,(int )a6,(int )a7,(int )a8);
   }
}

void foo3(int a1,int a2,...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a1,a2);

   {
      test31_t a5=va_arg(ap,test31_t);
      test32_t a6=va_arg(ap,test32_t);
      test33_t a7=va_arg(ap,test33_t);
      test34_t a8=va_arg(ap,test34_t);
      printf("%d,%d,%d,%d\n",(int )a5,(int )a6,(int )a7,(int )a8);
   }
}
int main()
{
   foo1(1,2,(test11_t)5,(test12_t)6,(test13_t)7,(test14_t)8);
   foo2(1,2,(test21_t)5,(test22_t)6,(test23_t)7,(test24_t)8);
   foo3(1,2,(test31_t)5,(test32_t)6,(test33_t)7,(test34_t)8);
}
