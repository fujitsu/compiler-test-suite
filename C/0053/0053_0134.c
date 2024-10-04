#include<stdio.h>
int main()
{

   volatile const   int *addr1,*addr2;

   printf("*** \n");

   {
     volatile const   int a1;
     volatile const   int a2=0;
     volatile const   int a3,b3;
     static volatile const int   a4[2]={1,2};        
     static volatile const int   a5[2]={3,4},b5=1; 


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

     if (a4[0]!=1 || a4[1]!=2)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (a5[0]!=3 || a5[1]!=4 || b5!=1)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
