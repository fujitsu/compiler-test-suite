#include  <stdio.h>
int main()
 {
   
   int a,b,c,i;
   a=1;
   b=1;
   for (i=1;i<=10;i++) {
      if (c==1) {
      b=b+i;
      }
      else {
      c=2;
      a=a+i;
      }
   }
   if ((a+b)==57)
   printf("--- ok ---\n");
   else {
   printf("--- ng --- a=%d\n",a);
   }
 }
