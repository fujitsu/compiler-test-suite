#include<stdio.h>

 long  a7;
 signed  a8;
 typedef unsigned type1;
int main()
{

   auto void *a1;
   auto char  a2,b2;
   register int a3=1,b3=a3;
   static short a6[2]={-1,0},b6=1;
   extern long  a7;
   extern signed a8;
   type1   a9;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = (void *)100;
   if ((int)a1!=100)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   a2 = 0x7f;  b2 = 0;
   if (a2!=127 || b2!=0)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   if (a3!=1 || b3!=1)
       printf(" ***  TEST-03 ERROR ***\n");
   else
       printf(" ***  TEST-03 OK ***\n");

   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   if (a7)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   a8 = -1;
   if (a8!=-1)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   a9 = 1;
   if (a9!=1)
       printf(" ***  TEST-07 ERROR ***\n");
   else
       printf(" ***  TEST-07 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
