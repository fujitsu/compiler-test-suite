#include<stdio.h>
int main()
{
   int i,i2,*ip,fnc(),iarry[2];
   enum   entag { en1, en2 } en;

   printf("*** \n");

   i = 0;  i2 = 1;
   if (!i!=1 || !i2!=0)
       printf("");
   else
       printf(" *** \n");

   en = en1;
   if (!en!=1)
       printf("");
   else
       printf(" *** \n");

   ip = &i2;
   if (!ip!=0)
       printf("");
   else
       printf(" *** \n");

   if (!fnc()!=0)
       printf("");
   else
       printf(" *** \n");

   iarry[1]=1;
   if (!iarry[1]!=0)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}

int fnc()
{
  return -1;
}
