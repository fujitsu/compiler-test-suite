#include <stdio.h>

int main( ) {
 volatile int a,b,c,d;

 b= 1;
 a= b+16;
 c= 16 + a;
 if (a==17 && c==33) 
   printf(" (1) ok\n");
 else
   printf(" (1) ng a=%d c=%d\n",a,c);
 b= -1;
 a= b+16;
 d= -16;
 c= 16 + d;
 if (a==15 && c==0) 
   printf(" (2) ok\n");
 else
   printf(" (2) ng a=%d c=%d\n",a,c);
}
