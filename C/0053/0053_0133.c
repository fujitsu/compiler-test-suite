#include<stdio.h>
int main()
{

   volatile const   int *addr1,*addr2;

   volatile const   int a1;
   volatile const   int a2=0;
   volatile const   int a3,b3;


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

  printf(" *** \n");
}
