#include <stdio.h>
#include <stdarg.h>

#if defined(__x86_64__) || defined(__sparcv9)
int main()
{
puts("1,2,5,6,7,8\n"
"1,2,5,6,7,8\n"
"1,2,5,6,7,8");
}
#else
typedef   struct TEST_TAG11 { char  i; }  test11_t;
typedef   struct TEST_TAG13 { short i; }   test13_t;
typedef   struct TEST_TAG21 { char  i; }  test21_t;
typedef   struct TEST_TAG23 { short i; }   test23_t;
typedef   struct TEST_TAG31 { char  i; }  test31_t;
typedef   struct TEST_TAG33 { short i; }   test33_t;

typedef   struct TEST_TAG12 { int   i; } test12_t;
typedef   struct TEST_TAG14 { int   i; } test14_t;

typedef   struct TEST_TAG22 { double f; }   test22_t;
typedef   struct TEST_TAG24 { int   i; } test24_t;

typedef   struct TEST_TAG32 { long long int i; }   test32_t;
typedef   struct TEST_TAG34 { int   i; } test34_t;

struct PARM_I12 { int i; int j; } ;

void foo1(struct PARM_I12 a2,...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a2.i,a2.j);

   {
      test11_t a5=va_arg(ap,test11_t);
      test12_t a6=va_arg(ap,test12_t);
      test13_t a7=va_arg(ap,test13_t);
      test14_t a8=va_arg(ap,test14_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.i,(int )a7.i,(int )a8.i);
   }
}

void foo2(struct PARM_I12 a2,...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a2.i,a2.j);

   {
      test21_t a5=va_arg(ap,test21_t);
      test22_t a6=va_arg(ap,test22_t);
      test23_t a7=va_arg(ap,test23_t);
      test24_t a8=va_arg(ap,test24_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.f,(int )a7.i,(int )a8.i);
   }
}

void foo3(struct PARM_I12 a2,...)
{

   va_list ap;
   va_start(ap,a2);

   printf("%d,%d,",a2.i,a2.j);

   {
      test31_t a5=va_arg(ap,test31_t);
      test32_t a6=va_arg(ap,test32_t);
      test33_t a7=va_arg(ap,test33_t);
      test34_t a8=va_arg(ap,test34_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.i,(int )a7.i,(int )a8.i);
   }
}

int main()
{
   static test11_t in15 = {5};
   static test12_t in16 = {6};
   static test13_t in17 = {7};
   static test14_t in18 = {8};
   static test21_t in25 = {5};
   static test22_t in26 = {6};
   static test23_t in27 = {7};
   static test24_t in28 = {8};
   static test31_t in35 = {5};
   static test32_t in36 = {6};
   static test33_t in37 = {7};
   static test34_t in38 = {8};

   static struct PARM_I12 prm12 = {1,2};

   foo1(prm12,in15,in16,in17,in18);
   foo2(prm12,in25,in26,in27,in28);
   foo3(prm12,in35,in36,in37,in38);
   return 0;
}
#endif
