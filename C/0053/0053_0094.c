#include<stdio.h>

 volatile long int a4;
 const int long a5;
int main()
{

   const long int *addrc1,*addrc2;
   volatile long int *addrv1,*addrv2;

   auto const long int a1=0;
   register volatile int long a2=0,b2=1;
   extern volatile long int a4;
   extern const int long a5;


   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrc1 = &a1;
   if (a1!=*addrc1)
       printf(" ***  TEST-01 ERROR ***\n");
   else
       printf(" ***  TEST-01 OK ***\n");

   if (a2!=0 || b2!=1)
       printf(" ***  TEST-02 ERROR ***\n");
   else
       printf(" ***  TEST-02 OK ***\n");

   if (a4!=0)
       printf(" ***  TEST-04 ERROR ***\n");
   else
       printf(" ***  TEST-04 OK ***\n");

   if (a5!=0)
       printf(" ***  TEST-05 ERROR ***\n");
   else
       printf(" ***  TEST-05 OK ***\n");

   printf("***  TEST ENDED ***\n");
}
