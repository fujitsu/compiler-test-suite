#include<stdio.h>

 typedef int inttype;

 extern volatile inttype  a5;
 const inttype  a6;
int main()
{
   printf("*** \n");

   {
     volatile int  *addrv1,*addrv2;
     const int     *addrc1,*addrc2;

     auto const inttype  a1=0;
     auto volatile inttype  a2=0,b2=0;
     register const inttype  a3=0;
     static volatile inttype  a4[2]={-1,0x7fffffff};

     extern volatile inttype  a5;
     extern const inttype  a6;
     typedef volatile inttype  inttype2;
     inttype2  a7;

     addrc1 = &a1;
     if (a1!=*addrc1)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrv1 = &a2;  addrv2 = &b2;
     if (a2!=*addrv1 || b2!=*addrv2)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a3!=0)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a5)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a6)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrv1 = &a7;
     if (a7!=*addrv1)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
volatile inttype a5 = 0;
