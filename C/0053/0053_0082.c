#include<stdio.h>

#include<stdio.h>

 extern const long int signed a4[2]={7,8};
 volatile int signed long a5;
 typedef const int long unsigned type1,type2;
int main()
{
   const signed long int *addrcs;
   const unsigned long int *addrcu;
   volatile signed long int *addrvs;
   volatile unsigned long int *addrvu;

   auto const signed long int a1=0;
   register volatile signed int long a2=0,b2=-1;
   static const long unsigned int a3[2]={0,0};
   extern const long int signed a4[2];
   extern volatile int signed long a5;
   type1  a6=0;
   type2  a7=1;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs = &a1;
   if (a1!=*addrcs)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   if (a3[0] || a3[1])
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

   addrcu = &a6;
   if (a6!=*addrcu || a7!=1)
       printf(" ***  TEST-06 ERROR ***\n");
   else
       printf(" ***  TEST-06 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
