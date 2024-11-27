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
typedef   struct TEST_TAG11 { unsigned int i; }  test11_t;
typedef   struct TEST_TAG12 { unsigned int i; }  test12_t;
typedef   struct TEST_TAG13 { unsigned int i; }  test13_t;
typedef   struct TEST_TAG14 { unsigned int i; }  test14_t;

typedef   struct TEST_TAG21 { unsigned char i; }  test21_t;
typedef   struct TEST_TAG22 { unsigned char i; }  test22_t;
typedef   struct TEST_TAG23 { unsigned char i; }  test23_t;
typedef   struct TEST_TAG24 { unsigned char i; }  test24_t;

typedef   struct TEST_TAG31 { unsigned long long i; }  test31_t;
typedef   struct TEST_TAG32 { unsigned long long i; }  test32_t;
typedef   struct TEST_TAG33 { unsigned long long i; }  test33_t;
typedef   struct TEST_TAG34 { unsigned long long i; }  test34_t;

struct PARM_I12 { int i[2]; } ;

void test1(struct PARM_I12 a2,va_list *args)
{
   printf("%d,%d,",a2.i[0],a2.i[1]);

   {
      test11_t a5=va_arg(*args,test11_t);
      test12_t a6=va_arg(*args,test12_t);
      test13_t a7=va_arg(*args,test13_t);
      test14_t a8=va_arg(*args,test14_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.i,(int )a7.i,(int )a8.i);
   }
}

void foo1(struct PARM_I12 a2, ...)
{
   va_list ap;
   va_start(ap,a2);
   test1(a2,&ap);
   va_end(ap);
}

void test2(struct PARM_I12 a2,va_list *args)
{
   printf("%d,%d,",a2.i[0],a2.i[1]);

   {
      test21_t a5=va_arg(*args,test21_t);
      test22_t a6=va_arg(*args,test22_t);
      test23_t a7=va_arg(*args,test23_t);
      test24_t a8=va_arg(*args,test24_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.i,(int )a7.i,(int )a8.i);
   }
}

void foo2(struct PARM_I12 a2, ...)
{
   va_list ap;
   va_start(ap,a2);
   test2(a2,&ap);
   va_end(ap);
}

void test3(struct PARM_I12 a2,va_list *args)
{
   printf("%d,%d,",a2.i[0],a2.i[1]);

   {
      test31_t a5=va_arg(*args,test31_t);
      test32_t a6=va_arg(*args,test32_t);
      test33_t a7=va_arg(*args,test33_t);
      test34_t a8=va_arg(*args,test34_t);
      printf("%d,%d,%d,%d\n",(int )a5.i,(int )a6.i,(int )a7.i,(int )a8.i);
   }
}

void foo3(struct PARM_I12 a2, ...)
{
   va_list ap;
   va_start(ap,a2);
   test3(a2,&ap);
   va_end(ap);
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

   static struct PARM_I12 prm12 = {{1,2}};

   foo1(prm12,in15,in16,in17,in18);
   foo2(prm12,in25,in26,in27,in28);
   foo3(prm12,in35,in36,in37,in38);
   return 0;
}
#endif
