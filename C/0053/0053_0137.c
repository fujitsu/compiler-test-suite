#include<stdio.h>
int main()
{
   const signed short int   *addrs1,*addrs2;
   const unsigned short int *addru1,*addru2;

   const signed short int   a1;
   volatile unsigned int short a2,b2;
   const short unsigned int a3=1,b3;
   const int signed short   b5;
   volatile int short unsigned a6;

   printf("*** \n");

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

   addrs1 = &b5;
   if (b5!=*addrs1)
       printf(" *** \n");
   else
       printf(" *** \n");

   a6 = 0x7fff;
   if (a6!=32767)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
