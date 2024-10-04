#include<stdio.h>
int main()
{
   printf("*** \n");

   {
     signed short int   a1;
     unsigned int short a2,b2;
     short unsigned int a3=1,b3;
     short int signed   a4[2];
     int signed short   a5[2],b5;
     int short unsigned a6,b6[2];

     a4[0] = -2;
     a4[1] = 3;
     a5[0] = 4;
     a5[1] = 5;
     b6[0] = 6;

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

     if (a4[0]!=-2 || a4[1]!=3)
         printf(" *** \n");
     else
         printf(" *** \n");

     b5 = -1;
     if (a5[0]!=4 || a5[1]!=5 || b5!=-1)
         printf(" *** \n");
     else
         printf(" *** \n");

     a6 = 0x7fff;  b6[1] = a6+1;
     if (a6!=32767 || b6[0]!=6 || b6[1]!=32768)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
