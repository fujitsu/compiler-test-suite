#include<stdio.h>
#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 const wchar_t a4=.5;
 volatile wchar_t a5;
 typedef volatile wchar_t type1[2];
int main()
{

   const wchar_t *addrc1,*addrc2;
   volatile wchar_t *addrv1,*addrv2;

   auto const wchar_t a1=0;
   register volatile wchar_t a2=0,b2=100;
   static const wchar_t a3[2]={2,3};
   extern const wchar_t a4;
   extern volatile wchar_t a5;
   type1  a6={0,0};


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrc1 = &a1;
   if (a1!=*addrc1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=0 || b2!=100)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" ***  TEST-03 ERROR ***\n");
   else
       printf(" ***  TEST-03 OK ***\n");

   if (a4!=0)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   if (a5!=0)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   addrv1 = &a6[0];  addrv2 = &a6[1];
   if (a6[0]!=*addrv1 || a6[1]!=*addrv2)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
