#include<stdio.h>

 extern long int signed a4[2]={7,8};
 int signed long a5;
 typedef int long unsigned type1;
int main()
{
   signed long int *addr11;
   unsigned long int *addr21;

   auto signed long int a1=0;
   register signed int long a2=0,b2=-1;
   static long unsigned int a3[2];
   extern long int signed a4[2];
   extern int signed long a5;
   type1  a6=0;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr11 = &a1;
   if (a1!=*addr11)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   addr21 = a3;
   if (a3[0]!=*addr21)
       printf(" ***  TEST-03 ERROR ***\n");
   else
       printf(" ***  TEST-03 OK ***\n");

   if (a4[0]!=7 || a4[1]!=8)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   if (a5!=0)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   addr21 = &a6;
   if (a6!=*addr21)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}