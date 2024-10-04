#include<stdio.h>

 volatile short a4;
 const short a5;
int main()
{

   volatile short *addrv1,*addrv2;
   const short *addrc1,*addrc2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile short a1,b1;
     register volatile short a2=0;
     static const short a3[2]={20,3};
     extern volatile short a4;
     extern const short a5;
     typedef const short type1;
     type1 a6;


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
