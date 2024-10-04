#include<stdio.h>
int main()
{
   signed long int    a1;
   unsigned int long  a2,b2;
   long unsigned int  a3=1,b3;
   long int signed    a4[2];
   int signed long    a5[2],b5;
   int long unsigned  a6,b6[2];

   a4[0] = 2;
   a4[1] = 3;
   a5[0] = 4;
   a5[1] = 5;
   b6[0] = 6;

   printf("*** \n");

   a1 = -1;
   if (a1!=-1)
       printf(" *** \n");
   else
       printf(" *** \n");

   a2 = a1+1;  b2 = a1-1;
   if (a2!=0 || b2!=-2)
       printf(" *** \n");
   else
       printf(" *** \n");

   b3 = 0xffffffff;
   if (a3!=1 || b3!=4294967295)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** \n");
   else
       printf(" *** \n");

   b5 = a5[0];
   if (a5[0]!=4 || a5[1]!=5 || b5!=4)
       printf(" *** \n");
   else
       printf(" *** \n");

   a6 = b6[1] = -1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if (a6!=18446744073709551615 || b6[0]!=6 || b6[1]!=18446744073709551615)
#else
   if (a6!=4294967295 || b6[0]!=6 || b6[1]!=4294967295)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
