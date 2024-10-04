#include<stdio.h>

 volatile const void *a4;
 volatile const void *a5;
int main()
{

   volatile const void *addr,*addr2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const void *a1=0;
     register volatile const void *a2=NULL, *b2=NULL;
     static volatile const void *a3[2]={0,(void*)3};
     extern volatile const void *a4;
     extern volatile const void *a5;
     typedef const volatile void t_void;
     t_void *a6=NULL;


     if (a1!=0)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     addr = a2;  addr2 = b2;
     if (a2!=addr || b2!=addr2)
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

     addr = a6;
     if (a6!=addr)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
