#include<stdio.h>

 int  a4[2];
 int a5;
int main()
{

   printf("***  ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto   int a1;
     register  int a2,b2=-1;
     static   int a3[2]={-1,1};
     extern   int a4[2];
     extern int  a5;


     a1 = 100;
     if (a1!=100)
         printf(" ***  TEST-01 ERROR ***\n");
     else
         printf(" ***  TEST-01 OK ***\n");

     a2 = -1;
     if (a2!=-1 || b2!=-1)
         printf(" ***  TEST-02 ERROR ***\n");
     else
         printf(" ***  TEST-02 OK ***\n");

     if (a3[0]!=-1 || a3[1]!=1)
         printf(" ***  TEST-03 ERROR ***\n");
     else
         printf(" ***  TEST-03 OK ***\n");

     if (a4[0]!=0 || a4[1]!=0)
         printf(" ***  TEST-04 ERROR ***\n");
     else
         printf(" ***  TEST-04 OK ***\n");

     if (a5)
         printf(" ***  TEST-05 ERROR ***\n");
     else
         printf(" ***  TEST-05 OK ***\n");
   }

   printf("***  TEST ENDED ***\n");
}
