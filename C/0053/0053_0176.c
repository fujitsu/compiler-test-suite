#include<stdio.h>

 typedef int inttype;
int main()
{
   printf("*** \n");

   {
     inttype  a1;
     inttype  a2,b2;
     inttype  a3=0;
     inttype  a4[2]={-1,0x7fffffff};
     a4[0]=-1;
     a4[1]=0x7fffffff;

     a1 = -1;
     if (a1!=-1)
         printf(" *** \n");
     else
         printf(" *** \n");

     a2 = b2 = 1;
     if (a2!=1 || b2!=1)
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
