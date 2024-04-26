#include <string.h>
#include  <stdio.h>

 int exv;
int main() {
   int    a,b,z,fun1(int a);
   char   c[3],d[5];
   void   ok(),ng();
     a=0xa;
     z=1000;
     b=fun1(z);
     memcpy(c,"abc",3);
     memcpy(d,"12abc",5);
     exv=1;
     if(a==b)
       {
         ok();
       }
     else
       {
         ng();
       }
     exv=2;
     if(memcmp(c,&d[2],3)==0)
       {
         ok();
       }
     else
       {
         ng();
       }
 }
 int fun1(int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void ok() {
   static char c1[]={"item1 ok"};
   static char c2[]={"item2 ok"};
     if(exv==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }
 void ng() {
   static char c1[]={"item1 ng"};
   static char c2[]={"item2 ng"};
     if(exv==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }
