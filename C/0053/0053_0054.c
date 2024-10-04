#include<stdio.h>

 volatile const short unsigned a4;
 volatile const signed short a5;
 typedef const volatile unsigned short t_us;
int main()
{

   volatile const signed short *addrs1,*addrs2;
   volatile const unsigned short *addru1,*addru2;

   auto volatile const signed short a1;
   register volatile const unsigned short a2=0,b2=1;
   static volatile const short signed a3[2]={2,3};
   extern volatile const short unsigned a4;
   extern volatile const signed short a5;
   t_us  a6;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2 || b2!=1)
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

   addru1 = &a6;
   if (a6!=*addru1)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
