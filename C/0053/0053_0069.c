#include<stdio.h>

#include<stdio.h>

 volatile const char a4;
 volatile const char a5;
int main()
{

   volatile const char *addr,*addr2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const char a1;
     register volatile const char a2=0xff,b2=0x00;
     static volatile const char a3[2]={2,3};
     extern volatile const char a4;
     extern volatile const char a5;
     typedef const volatile char t_c;
     t_c  a6;


     addr = &a1;
     if (a1!=*addr)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2!=-1 || b2!=0)
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
