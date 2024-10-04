#include<stdio.h>

#include<stdio.h>

 volatile const long a4;
 volatile const long a5;
int main()
{

   volatile const long *addr,*addr2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const long a1,b1;
     register volatile const long a2=-1;
     static volatile const long a3[2]={2,3};
     extern volatile const long a4;
     extern volatile const long a5;
     typedef const volatile long t_l;
     t_l  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
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

     if (a4!=0)
         printf(" ***  TEST-04 ERROR ***\n");
     else
         printf(" ***  TEST-04 OK ***\n");

     if (a5!=0)
         printf(" ***  TEST-05 ERROR ***\n");
     else
         printf(" ***  TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
