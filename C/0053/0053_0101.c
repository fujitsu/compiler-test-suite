#include<stdio.h>

 volatile void *a4;
 const void *a5;
int main()
{

   volatile void *addrv1,*addrv2;
   const void *addrc1,*addrc2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto  void *a1=NULL;
     register volatile void *a21=NULL, *a2=NULL, *b2=NULL;
     static const void *a3[2]={0,(void*)3};
     extern volatile void *a4;
     extern const void *a5;
     typedef volatile void t_void;
     t_void *a6=NULL;

     a21=(void *)&a3[1];
     a2=a21;
     addrc1 = a1;
     if (a1!=addrc1)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     addrv1 = b2;
     if (a2!=a21 || b2!=addrv1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=0 || a3[1]!=(void*)3)
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

     addrv1 = a6;
     if (a6!=addrv1)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
