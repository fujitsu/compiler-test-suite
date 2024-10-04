#include<stdio.h>
 

int main()
{
 char func();
 char a,b,c,d;
 int  i,j;

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");
   i=func();
   if(i==-1)
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG ****\n");

   a=200;
   b=55;
   c=a+b;

   if(c==-1)
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG ****\n");

   j=255;
   i=(char)j;
   if(c==-1)
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG ****\n");

   printf("******* 01 TEST ENDED *******\n");
}
char func() {
    char a=0xff;
    return a;
    }
