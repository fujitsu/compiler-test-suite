#include<stdio.h>

 typedef int inttype;

 extern inttype    a5;
 inttype  a6;
 typedef inttype   inttype2;
int main()
{
   auto inttype a1;
   auto inttype a2,b2;
   register inttype a3=0;
   static inttype   a4[2]={-1,0x7fffffff};

   extern inttype  a5;
   extern inttype a6;
   inttype2  a7;

   printf("*** \n");

   a1 = 0;
   if (a1!=0)
       printf(" *** \n");
   else
       printf(" *** \n");

   a2 = b2 = -1;
   if (a2!=-1 || b2!=-1)
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

   a7 = 100;
   if (a7!=100)
       printf(" *** \n");
   else
       printf(" *** \n");

   printf("*** \n");
}
inttype a5 = 0;
