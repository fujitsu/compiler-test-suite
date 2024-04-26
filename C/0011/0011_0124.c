#include <string.h>
#include  <stdio.h>

 static char o1[]={"item1 ok"};
 static char n1[]={"item1 ng"};
int main() {
   int    a,b,z,fun1(int a);
   char   c[3],d[5];
   void   ok(int a),ng(int a);
     a=0xa;
     z=1000;
     b=fun1(z);
     memcpy(c,"abc",3);
     memcpy(d,"12abc",5);
     if(a==b)
       {
         ok(1);
       }
     else
       {
         ng(1);
       }
     if(memcmp(c,&d[2],3)==0)
       {
         ok(2);
       }
     else
       {
         ng(2);
       }
}
 int fun1(int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void ok(int a)
 {
     if(a==1)
       {
           printf("%s\n",o1);
       }
     else
       {
           o1[4]='2';
           printf("%s\n",o1);
       }
 }
 void ng(int a)
 {
     if(a==1)
       {
           printf("%s\n",n1);
       }
     else
       {
           n1[4]='2';
           printf("%s\n",n1);
       }
 }
