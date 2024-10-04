#include<stdio.h>

 typedef int inttype;
int main()
{
   const int  *addrc1,*addrc2;
   volatile int  *addrv1,*addrv2;

   printf("*** \n");

   {
     volatile inttype  a1;
     const inttype  a2=0,b2=0;
     volatile inttype  a3=0;
     const inttype  a4[2]={-1,0x7fffffff};

     addrv1 = &a1;
     if (a1!=*addrv1)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrc1 = &a2;  addrc2 = &b2;
     if (a2!=*addrc1 || b2!=*addrc2)
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
   }

   printf("*** \n");
}
