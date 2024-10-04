#include<stdio.h>
int main()
{
   const volatile signed short int   *addrs1,*addrs2;
   const volatile unsigned short int *addru1,*addru2;

   printf("START \n");

   {
     const volatile signed short int   a1;
     const volatile unsigned int short a2,b2;
     volatile const short unsigned int a3=1,b3;
     volatile const short int signed   a4[2]={2,3};
     volatile const int signed short   a5[2]={4,-5},b5;
     volatile const int short unsigned a6,b6[2]={6};


     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" ERROR \n");
     else
         printf(" OK \n");

     addru1 = &a2;  addru2 = &b2;
     if (a2!=*addru1 || b2!=*addru2)
         printf(" ERROR \n");
     else
         printf(" OK \n");

     addru1 = &b3;
     if (a3!=1 || b3!=*addru1)
         printf(" ERROR \n");
     else
         printf(" OK \n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" ERROR \n");
     else
         printf(" OK \n");

     addrs1 = &b5;
     if (a5[0]!=4 || a5[1]!=-5 || b5!=*addrs1)
         printf(" ERROR \n");
     else
         printf(" OK \n");

     addru1 = &a6;  addru2 = &b6[1];
     if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
         printf(" ERROE \n");
     else
         printf(" OK \n");
   }

   printf("END \n");
}
