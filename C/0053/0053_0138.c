#include<stdio.h>
int main()
{
   const signed short int   *addrs1,*addrs2;
   const unsigned short int *addru1,*addru2;

   printf("*** \n");

   {
     const signed short int   a1;
     volatile unsigned int short a2,b2;
     const short unsigned int a3=1,b3;
     static volatile short int signed a4[2]={-2,3};  
     static const int signed short   a5[2]={4,5},b5; 
     volatile int short unsigned a6,b6[2];

     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** \n");
     else
         printf(" *** \n");

     a2 = 0x7fff;  b2 = 0xffff;
     if (a2!=32767 || b2!=65535)
         printf(" *** \n");
     else
         printf(" *** \n");

     addru1 = &b3;
     if (a3!=1 || b3!=*addru1)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a4[0]!=-2 || a4[1]!=3)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrs1 = &b5;
     if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
         printf(" *** \n");
     else
         printf(" *** \n");

     a6 = 0x7fff;  b6[1] = a6+1; b6[0] = 6;
     if (a6!=32767 || b6[0]!=6 || b6[1]!=32768)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
