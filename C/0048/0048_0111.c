#include <string.h>
#include <stdio.h>
int test2 (void);
int test1 (void);

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
 {
 printf(" ***  test start *** \n");
 test1();
 test2();
 printf(" ***  test end *** \n");
 }

 int 
test1 (void)
 {
 int i;
 union {               
     int i;
     int j;
 } un;
 union tag1 ;           
 union tag1 *unp;       
 union tag1 {          
     signed   int i;
     unsigned int ui;
 } ;
 union tag1 un1;
 union tag2 {
     signed int   i;
     signed short s;
     signed char  c;
 } un2,*un3,un4[2]={ 0x80000000, 0x0000ffff };

 un.i = i = 2147483647;
 if (un.j != 0x7fffffff)
     printf(" ***  test 1-1 error ***\n");

 un1.i = -1;
#if INT64
 if (un1.i != -1 || un1.ui != 18446744073709551615 || un1.ui < 0)
#else
 if (un1.i != -1 || un1.ui != 4294967295 || un1.ui < 0)
#endif
     printf(" ***  test 1-2 error ***\n");

 unp=&un1;
 if (unp->i != -1 || unp->ui+1 != 0)
     printf(" ***  test 1-3 error ***\n");

 un2=un4[0];
#if INT64
 if (un2.i != 2147483648 || un2.s != 0 || un2.c != 0)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (un2.i != -2147483648 || un2.s != 0 || un2.c != 0)
#else
 if (un2.i != -2147483648 || un2.s != -32768 || un2.c != -128)
#endif
     printf(" ***  test 1-4 error ***\n");

 un3=un4;
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (un3->i != un2.i || (un3+1)->i != 65535 || un3[1].s != -1)
#else
 if (un3->i != un2.i || (un3+1)->i != 65535 || un3[1].s != 0)
#endif
   {
     printf(" ***  test 1-5 error ***\n");
     printf(" un3->i: %x\n",un3->i);
     printf(" un2.i: %x\n",un2.i);
     printf(" (un3+1)->i: %x\n",(un3+1)->i);
     printf(" un3[1].s: %x\n",un3[1].s);
    }
 }

 typedef union tag un_type;
 union tag {
     char ca[4];
     int  i;
 };
 un_type  unx;
 un_type un2;
 union tag2 {
     double d;
     float  f;
 } static un3 = { 0.375 };

 int 
test2 (void)
 {
 char ca[4] = { 0x80, 0x00, 0x00, 0x00 };
 const auto union tag volatile aun = { 0xff, 0xff, 0xff, 0xff };
 register un_type const volatile *runp;
 union tag3 {
#if LONG64 || __x86_64__ || __aarch64__
     long  i;
#else
     int  i;
#endif
     int  *p;
 } auto volatile acvun;
 int i=100;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 unx.ca[3] = 0x7f; unx.ca[1] = unx.ca[2] = unx.ca[0] = 0xff;
#else
 unx.ca[0] = 0x7f; unx.ca[1] = unx.ca[2] = unx.ca[3] = 0xff;
#endif
#if INT64
 if (unx.i != 0x7fffffff00000000)
#else
 if (unx.i != 2147483647)
#endif
     printf(" ***  test 2-1 error ***\n");

 un2 = unx;
 un2.ca[0] = 0;
#if INT64
 if (un2.ca[1]-un2.ca[2] != un2.ca[0] || un2.i != 0xffffff00000000)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (un2.ca[1]-un2.ca[2] != un2.ca[0] || un2.i != 0x7fffff00)
#else
 if (un2.ca[1]-un2.ca[2] != un2.ca[0] || un2.i != 16777215)
#endif
  {
     printf(" ***  test 2-2 error ***\n");
     printf("un2.i: %x\n",un2.i);
  }

 if (un3.d != .375)
     printf(" ***  test 2-3 error ***\n");

#if INT64
 if (aun.i != 0xffffffff00000000)
#else
 if (aun.i != -1)
#endif
     printf(" ***  test 2-4 error ***\n");

 runp = &aun;
 memcpy(runp->ca,ca,4);
#if INT64
 if (runp->i != -9223372036854775808 || aun.ca[0] != -128)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (runp->i != 128 || aun.ca[0] != -128)
#else
 if (runp->i != -2147483648 || aun.ca[0] != -128)
#endif
     printf(" ***  test 2-5 error ***\nrunp->i:%d,aun.ca[0]:%d\n",runp->i,aun.ca[0]);

 acvun.p = &i;
 if (*((int *)acvun.i) != 100)
     printf(" ***  test 2-6 error ***\n");
 }
