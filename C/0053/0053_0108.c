#include<stdio.h>

 volatile short a4;
 const short a5;
 typedef volatile short type1;
int main()
{

   volatile short *addrv1,*addrv2;
   const short *addrc1,*addrc2;

   auto const short a1,b1[2];
   register volatile short a2=0x7fff;
   static const short a3[2]={2,3};
   extern volatile short a4;
   extern const short a5;
   type1 a6;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrc1 = &a1;  addrc2 = b1;
   if (a1!=*addrc1 || b1[0]!=*addrc2)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=32767)
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

   addrv1 = &a6;
   if (a6!=*addrv1)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
