#include<stdio.h>

 volatile const char unsigned a4=1;
 volatile const signed char a5;
int main()
{

   volatile const signed char *addrs1,*addrs2;
   volatile const unsigned char *addru1,*addru2;

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed char a1,b1=-1;
     register volatile const unsigned char a2=1;
     static volatile const char signed a3[2]={2,3},b3=4;
     extern volatile const char unsigned a4;
     extern volatile const signed char a5;
     typedef const volatile unsigned char t_uc;
     t_uc  a6;


     addrs1 = &a1;
     if (a1!=*addrs1 || b1!=-1)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     if (a2!=1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3 || b3!=4)
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

     addru1 = &a6;
     if (a6!=*addru1)
         printf(" ***  TEST-06 ERROR ***\n");
     else
         printf(" ***  TEST-06 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
