#include<stdio.h>

#include<stdio.h>

 volatile  int a4=1;
 const int  a5;
int main()
{

   const  int *addrc1,*addrc2;
   volatile  int *addrv1,*addrv2;

   {
     auto const  int a1=0, b1=0;
     register volatile  int a2=-1;
     static const  int a3[2]={2,3};
     extern volatile  int a4;
     extern const int  a5;
     typedef volatile  int type1;
     type1 a6=0;


     printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

     addrc1 = &a1;  addrc2 = &b1;
     if (a1!=*addrc1 || b1!=*addrc2)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2!=-1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" ***  TEST-03 ERROR ***\n");
     else
         printf(" ***  TEST-03 OK ***\n");

     if (a4!=1)
         printf(" ***  TEST-04 ERROR ***\n");
     else
         printf(" ***  TEST-04 OK ***\n");

     if (a5!=0)
         printf(" ***  TEST-05 ERROR ***\n");
     else
         printf(" ***  TEST-05 OK ***\n");

     addrv1 = &a6;
     if (a6!=*addrv1)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
