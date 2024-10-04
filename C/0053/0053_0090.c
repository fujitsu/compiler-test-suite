#include<stdio.h>

 volatile int unsigned a4;
 const signed int a5;
 typedef volatile signed int type1;
int main()
{

   const signed int *addrcs1,*addrcs2;
   const unsigned int *addrcu1,*addrcu2;
   volatile signed int *addrvs1,*addrvs2;
   volatile unsigned int *addrvu1,*addrvu2;

   auto const unsigned int a1=0;
   register volatile signed int a2=0,b2=1;
   static const int signed a3[2]={2,3};
   extern volatile int unsigned a4;
   extern const signed int a5;
   type1  a6=0;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcu1 = &a1;
   if (a1!=*addrcu1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=0 || b2!=1)
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

   addrvs1 = &a6;
   if (a6!=*addrvs1)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
