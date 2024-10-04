#include<stdio.h>

 volatile const int short a4=-1;
 volatile const short int a5;
 typedef const volatile int short t_si;
int main()
{

   volatile const short int *addr,*addr2;

   auto volatile const int short a1,b1;
   register volatile const short int a2=0x7fff;
   static volatile const int short a3[2]={-2,};
   extern volatile const short int a4;
   extern volatile const int short a5;
   t_si   a6;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=32767)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   if (a3[0]!=-2 || a3[1])
       printf(" ***  TEST-03 ERROR ***\n");
   else
       printf(" ***  TEST-03 OK ***\n");

   if (a4!=-1)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   if (a5!=0)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
