#include<stdio.h>
int main()
{

   const   int *addr1,*addr2;

   const      int a1=0;
   volatile   int a2=0;
   const      int a3=0, b3=0;
   const      int b5=1;


   printf("*** \n");

   addr1 = &a1;
   if (a1!=*addr1)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (a2)
       printf(" *** \n");
   else
       printf(" *** \n");

   addr1 = &a3;  addr2 = &b3;
   if (a3!=*addr1 || b3!=*addr2)
       printf(" *** \n");
   else
       printf(" *** \n");

   if (b5!=1)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
