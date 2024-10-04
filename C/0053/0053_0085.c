#include<stdio.h>

 extern const short int signed a4[2]={7,8};
 static const short unsigned int a3[2];
 volatile int signed short a5;
int main()
{
   const signed short int *addrcs;
   const unsigned short int *addrcu;
   volatile signed short int *addrvs;
   volatile unsigned short int *addrvu;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed short int a1;
     register volatile signed int short a2=0,b2=-1;
     extern const short int signed a4[2];
     extern volatile int signed short a5;
     typedef const int short unsigned type1[2];
     type1  a6;

     addrcs = &a1;
     if (a1!=*addrcs)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2 || b2!=-1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=0 || a3[1]!=0)
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

     addrcu = a6;
     if (a6[0]!=*addrcu)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
