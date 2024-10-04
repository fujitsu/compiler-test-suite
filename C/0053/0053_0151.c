#include<stdio.h>
int main()
{

   void     *a1=NULL,*addrv;
   char      a2,b2;
   int       a3=1,b3=a3;
   short     a6[2],b6=1;
   long      a7;
   signed    a8,b8,c8;
   unsigned  a9[2],b9=1,c9;

   a6[0] = -1;
   a6[1] = 0;

   printf("*** \n");

   addrv = a1;
   if (a1 != addrv)
       printf(" *** \n");
   else
       printf(" *** \n");

   a2 = 0x7f;  b2 = 0;
   if (a2!=127 || b2!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a3!=1 || b3!=1)
       printf(" *** \n");
   else
       printf(" *** \n");
   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   a7 = 12345;
   if (a7!=12345)
       printf(" *** \n");
   else
       printf(" *** \n");

   a8 = 1;  b8 = a8-1;  c8 = b8-1;
   if (a8!=1 || b8!=0 || c8!=-1)
       printf(" *** \n");
   else
       printf(" *** \n");

   a9[0] = 0xffffffff;  a9[1] = a9[0]+1;  c9 = 1;
#if INT64
   if (a9[0]!=4294967295 || a9[1]!=4294967296 || b9!=1 || c9!=1)
#else
   if (a9[0]!=4294967295 || a9[1]!=0 || b9!=1 || c9!=1)
#endif
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
