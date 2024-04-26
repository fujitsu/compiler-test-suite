#include <string.h>
#include  <stdio.h>

#if INT64
#define int __int32
#endif

 union tag1 {
   unsigned int   a;
   struct tag2 {
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1;
int main() {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1(),fun2();
     memcpy(u1.c,"1234",4);
     fun1();
     fun2();
     if(memcmp(u1.c,"ABCD",4)==0)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
 }
 void fun1() {
     u1.b.b1=u1.b.b1-0x30;
     u1.b.b2=u1.b.b2-0x30;
     u1.b.b3=u1.b.b3-0x30;
     u1.b.b4=u1.b.b4-0x30;
 }
 void fun2() {
     u1.a=u1.a+0x40404040;
 }
