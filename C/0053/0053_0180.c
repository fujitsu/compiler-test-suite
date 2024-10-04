#include<stdio.h>

 typedef volatile long int type1[2];
int main()
{
  {
   static const long int a3[2]={2,-3};
   static type1  a6={1,2};


   printf("*** \n");

   if (a3[0]!=2 || a3[1]!=-3)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a6[0]!=1 || a6[1]!=2)
       printf(" *** \n");
   else
       printf(" *** \n");
  }

  {
   static volatile const unsigned short a14[2]={2,3};
   static volatile const int unsigned   b15[2]={4,5};
   static volatile const signed int     a16[2]={6,7};
   static volatile const signed char    c18[2]={9,0};

   if (a14[0]!=2 || a14[1]!=3)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (b15[0]!=4 || b15[1]!=5)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a16[0]!=6 || a16[1]!=7)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (c18[0]!=9 || c18[1]!=0)
       printf(" *** \n");
   else
       printf(" *** \n");
  }
  {
   static volatile const   int a24[2]={1,2};
   static volatile const   int a25[2]={3,4};

   if (a24[0]!=1 || a24[1]!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a25[0]!=3 || a25[1]!=4)
       printf(" *** \n");
   else
       printf(" *** \n");
  }
  {
   static volatile short int signed   a34[2]={-2,3};
   static const int signed short      a35[2]={4,5} ;
   static volatile int short unsigned a36,b36[2]={6};

   if (a34[0]!=-2 || a34[1]!=3)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a35[0]!=4 || a35[1]!=5)
       printf(" *** \n");
   else
       printf(" *** \n");

   a36 = 0x7fff;  b36[1] = a36+1;
   if (b36[0]!=6 || b36[1]!=32768)
       printf(" *** \n");
   else
       printf(" *** \n");
  }
  {
   volatile        int a44[2];
   static const    int a45[2]={3,4};
   a44[0]=1; a44[1]=2;

   if (a44[0]!=1 || a44[1]!=2)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a45[0]!=3 || a45[1]!=4)
       printf(" *** \n");
   else
       printf(" *** \n");
  }
  {
   short int signed   a54[2];
   int signed short   a55[2];
   int short unsigned b56[2],a56;
   a54[0]=-2; a54[1]=3;
   a55[0]=4;  a55[1]=5;
   b56[0]=6;

   if (a54[0]!=-2 || a54[1]!=3)
       printf(" *** \n");
   else
       printf(" *** \n");

   a56  = 0x7fff;  b56[1] = a56+1;
   if (b56[0]!=6 || b56[1]!=32768)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
  }
}
