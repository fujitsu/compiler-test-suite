#include<stdio.h>

 long unsigned a4;
 static unsigned char a7[2];
 extern char signed a8=10;
 signed long a5;
 typedef unsigned short t_ul;
int main()
{

   auto short signed a1;
   register unsigned int a2=0,b2=1;
   static int signed a3[2]={2,3};
   extern unsigned long a4;
   extern long signed  a5;
   t_ul  a6;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = -1;
   if (a1!=-1)
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

   a6 = 0xffff;
   if (a6!=65535)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   a7[0] = 0xff;
   if (a7[0]!=255 || a7[1]!=0)
       printf(" ***  TEST-07 ERROR ***\n");
   else
       printf(" ***  TEST-07 OK ***\n");

   if (a8!=10)
       printf(" ***  TEST-08 ERROR ***\n");
   else
       printf(" ***  TEST-08 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
