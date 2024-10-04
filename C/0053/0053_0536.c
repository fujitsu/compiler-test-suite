#include<stdio.h>
int main()
{
   int i,i2,*ip;

   printf("*** \n");

   i = 1;  i2 = 2;
   i += i2;
   if (i!=3)
       printf("");
   else
       printf(" *** \n");

   ip = 0;
   ip += i;
   if ((int)ip!=(3*sizeof(int)))
       printf("");
   else
       printf(" *** \n");

   printf("*** \n");
}
