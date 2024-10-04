#include<stdio.h>

 volatile long unsigned a4;
 const signed long a5;
int main()
{

   const signed long *addrcs1,*addrcs2;
   const unsigned long *addrcu1,*addrcu2;
   volatile signed long *addrvs1,*addrvs2;
   volatile unsigned long *addrvu1,*addrvu2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed long a1=0;
     register volatile unsigned long a2=0,b2=1;
     static const long signed a3[2]={2,3};
     extern volatile long unsigned a4;
     extern const signed long  a5;
     typedef volatile unsigned long type1;
     type1  a6=0;


     addrcs1 = &a1;
     if (a1!=*addrcs1)
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

     addrvu1 = &a6;
     if (a6!=*addrvu1)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
