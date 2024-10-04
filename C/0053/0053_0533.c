#include<stdio.h>
int main()
{
   int i,i2,*ip,fnc(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("*** \n");

   i = 0;  i2 = 1;
   if ((i||i2)!=1)
       printf("");
   else
       printf(" *** \n");

   en = en1;
   if ((i||en)!=0)
       printf("");
   else
       printf(" *** \n");

   ip = &i2;
   if ((i||ip)!=1)
       printf("");
   else
       printf(" *** \n");

   if ((i||fnc())!=0)
       printf("");
   else
       printf(" *** \n");

   iarry[1]=0;
   if ((i2||iarry[1])!=1)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}

int fnc()
{
  return 0;
}
