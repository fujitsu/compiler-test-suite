#include<stdio.h>
int main()
{

   signed long     a1;
   long unsigned   a2,b2;
   signed short    a3=-1,b3;
   unsigned short  a4[2];
   int unsigned    a5,b5[2];
   signed int      a6[2],b6=8;
   char unsigned   a7,b7,c7;
   signed char     a8,b8=1,c8[2];

   a4[0] = 2;
   a4[1] = 3;
   b5[0] = 4;
   b5[1] = 5;
   a6[0] = 6;
   a6[1] = 7;
   c8[0] = 9;
   c8[1] = 0;

   printf("*** \n");

   a1 = 0;
   if (a1!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   a2 = 0;  b2 = 1;
   if (a2!=0 || b2!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   b3 = -1;
   if (a3!=-1 || b3!=-1)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** \n");
   else
       printf(" *** \n");

   a5 = 0xffffffff;
   if (a5!=4294967295 || b5[0]!=4 || b5[1]!=5)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a6[0]!=6 || a6[1]!=7 || b6!=8)
       printf(" *** \n");
   else
       printf(" *** \n");

   a7 = b7 = c7 = 0x7f;
   if (a7!=127 || b7!=127 || c7!=127)
       printf(" *** \n");
   else
       printf(" *** \n");

   a8 = -1;
   if (a8!=-1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
