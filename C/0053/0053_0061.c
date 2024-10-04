#include<stdio.h>

 volatile const int long a4;
 volatile const long int a5;
int main()
{

   volatile const long int *addr,*addr2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const int long a1;
     register volatile const long int a2=0,b2=1;
     static volatile const int long a3[2]={-2};
     extern volatile const long int a4;
     extern volatile const int long a5;
     typedef const volatile int long t_li;
     t_li  a6;


     addr = &a1;
     if (a1!=*addr)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2!=0 || b2!=1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=-2 || a3[1])
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
