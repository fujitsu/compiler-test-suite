#include<stdio.h>
int main()
{

   volatile const void    *addrv1;
   volatile const char    *addrc1,*addrc2;
   volatile const long    *addrl1;
   volatile const signed  *addrs1,*addrs2,*addrs3;
   volatile const unsigned  *addru1,*addru2;

   printf("*** \n");

   {
     volatile const void *a1=NULL;
     volatile const char a2,b2;
     volatile const int a3=1,b3=a3;
     volatile const short a6[2]={-1,0},b6=1;
     volatile const long a7;
     volatile const signed a8,b8,c8;
     volatile const unsigned a9[2],b9=1,c9;


     addrv1 = a1;
     if (a1 != addrv1)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrc1 = &a2;  addrc2 = &b2;
     if (a2!=*addrc1 || b2!=*addrc2)
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

     addrl1 = &a7;
     if (a7!=*addrl1)
         printf(" *** \n");
     else
         printf(" *** \n");

     addrs1 = &a8;  addrs2 = &b8;  addrs3 = &c8;
     if (a8!=*addrs1 || b8!=*addrs2 || c8!=*addrs3)
         printf(" *** \n");
     else
         printf(" *** \n");

     addru1 = a9;  addru2 = &c9;
     if (a9[0]!=*addru1 || b9!=1 || c9!=*addru2)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
