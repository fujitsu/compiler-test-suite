#include<stdio.h>

 typedef int inttype;
int main()
{
   volatile const int  *addr,*addr2;

   volatile const inttype  a1;
   volatile const inttype  a2,b2;
   volatile const inttype  a3=0;
   static volatile const inttype  a4[2]={-1,0x7fffffff};

   printf("*** \n");

   addr = &a1;
   if (a1!=*addr)
       printf(" *** \n");
   else
       printf(" *** \n");

   addr = &a2;  addr2 = &b2;
   if (a2!=*addr || b2!=*addr2)
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

   printf("*** \n");
}
