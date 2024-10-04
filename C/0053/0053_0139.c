#include<stdio.h>
int main()
{

   const signed long     *addrsl1,*addrsl2;
   const unsigned long   *addrul1,*addrul2;
   const signed short    *addrss1,*addrss2;
   const unsigned short  *addrus1,*addrus2;
   const signed int      *addrsi1,*addrsi2;
   const unsigned int    *addrui1,*addrui2;
   const signed char     *addrsc1,*addrsc2,*addrsc3;
   const unsigned char   *addruc1,*addruc2,*addruc3;

   volatile signed long    a1=0;
   const long unsigned     a2=0, b2=0;
   volatile signed short   a3=-1,b3;
   const unsigned short    a4[2]={2,3};
   volatile int unsigned   a5,b5[2]={4,5};
   const signed int        a6[2]={6,7},b6=8;
   volatile char unsigned  a7,b7,c7;
   const signed char       a8,b8=1,c8[2]={9,0};


   printf("*** \n");

   a1 = 0;
   if (a1!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   addrul1 = &a2;  addrul2 = &b2;
   if (a2!=*addrul1 || b2!=*addrul2)
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

   addrsc1 = &a8;
   if (a8!=*addrsc1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
