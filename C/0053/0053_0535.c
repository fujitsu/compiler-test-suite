#include<stdio.h>
int main()
{
   int i,i2,fnc();
   enum   entag { en1, en2 } en;

   printf("*** \n");

   i = 0;  i2 = 1;
   if (~i!=-1 || ~i2!=-2)
       printf("");
   else
       printf(" *** \n");

   en = en1;
   if (~en!=-1)
       printf("");
   else
       printf(" *** \n");

   if (~fnc()!=0)
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}

int fnc()
{
  return -1;
}
