#include<stdio.h>
int main()
{
   const signed long int    *addrs1,*addrs2;
   const unsigned long int  *addru1,*addru2;

   volatile signed long int    a1=0;
   const unsigned int long     a2=0, b2=0;
   volatile long unsigned int  a3=1,b3;
   const long int signed       a4[2]={2,3};
   volatile int signed long    a5[2]={4,5},b5;
   const int long unsigned     a6=0, b6[2]={6};


   printf("*** \n");

   a1 = -1;
   if (a1!=-1)
       printf(" *** \n");
   else
       printf(" *** \n");

   addru1 = &a2;  addru2 = &b2;
   if (a2!=*addru1 || b2!=*addru2)
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

   addru1 = &a6;  addru2 = &b6[1];
   if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
