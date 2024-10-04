#include<stdio.h>

 volatile signed a4;
 const signed a5;
int main()
{

   volatile signed *addrv1,*addrv2;
   const signed *addrc1,*addrc2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile signed a1=0, b1=0;
     register volatile signed a2=0;
     static const signed a3[2]={20,3};
     extern volatile signed a4;
     extern const signed a5;
     typedef const signed type1;
     type1 a6=0;


     addrv1 = &a1;  addrv2 = &b1;
     if (a1!=*addrv1 || b1!=*addrv2)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=20 || a3[1]!=3)
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

     addrc1 = &a6;
     if (a6!=*addrc1)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
