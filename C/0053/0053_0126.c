#include<stdio.h>
int main()
{
   const volatile signed long int    *addrs1,*addrs2;
   const volatile unsigned long int  *addru1,*addru2;

   const volatile signed long int    a1;
   const volatile unsigned int long  a2,b2;
   volatile const long unsigned int  a3=1,b3;
   static volatile const long int signed    a4[2]={2,3};
   static volatile const int signed long    a5[2]={4,5},b5;
   static volatile const int long unsigned  a6,b6[2]={6};

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   addru1 = &a2;  addru2 = &b2;
   if (a2!=*addru1 || b2!=*addru2)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   addru1 = &b3;
   if (a3!=1 || b3!=*addru1)
       printf(" ***  TEST-03 ERROR ***\n");
   else
       printf(" ***  TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   addrs1 = &b5;
   if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   addru1 = &a6;  addru2 = &b6[1];
   if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
