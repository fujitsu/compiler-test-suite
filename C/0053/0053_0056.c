#include<stdio.h>

 volatile const int unsigned a4;
 volatile const signed int a5;
 typedef const volatile unsigned int t_ui;
int main()
{

   volatile const signed int *addrs1,*addrs2;
   volatile const unsigned int *addru1,*addru2;

   auto volatile const signed int a1;
   register volatile const unsigned int a2=0xffffffff,b2=0;
   static volatile const int signed a3[2]={2,3};
   extern volatile const int unsigned a4;
   extern volatile const signed int a5;
   t_ui  a6;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=4294967295 || b2)
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
