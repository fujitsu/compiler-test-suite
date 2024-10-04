#include<stdio.h>
int main()
{
   signed short int   a1;
   unsigned int short a2,b2;
   short unsigned int a3=1,b3;
   int signed short   b5;
   int short unsigned a6;

   printf("*** \n");

   a1 = 0;
   if (a1!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   a2 = 0x7fff;  b2 = 0xffff;
   if (a2!=32767 || b2!=65535)
       printf(" *** \n");
   else
       printf(" *** \n");

   b3 = a3;
   if (a3!=1 || b3!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   b5 = -1;
   if (b5!=-1)
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
