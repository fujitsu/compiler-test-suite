#include  <stdio.h>

 union tag1 {
   unsigned char d;
   struct tag2 {
     unsigned char a:4;
     unsigned char b:2;
     unsigned char c:2;
   } s1;
 } u1;
int main() {
   int  y,z;
     for (z=1;z<20;z++)
     u1.s1.a=3+z;
     for (z=1;z<20;z++)
     u1.s1.b=2+z;
     for (z=1;z<20;z++)
     u1.s1.c=1+z;
     y=u1.d;
     for (z=1;z<10;z++)
     u1.s1.a=3+z;
     for (z=1;z<10;z++)
     u1.s1.b=2+z;
     for (z=1;z<10;z++)
     u1.s1.c=1+z;
     for (z=11;z<20;z++)
     u1.s1.a=3+z;
     for (z=11;z<20;z++)
     u1.s1.b=2+z;
     for (z=11;z<20;z++)
     u1.s1.c=1+z;
     if (y == u1.d) {
     printf("OK\n"); }
     else           {
     printf("NG\n"); }
 }
