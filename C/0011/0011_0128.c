#include  <stdio.h>

int main() {
   union tag1 {
     unsigned char z;
     struct tag2 {
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
       unsigned char c:2;
       unsigned char b:2;
       unsigned char a:4;
#else
       unsigned char a:4;
       unsigned char b:2;
       unsigned char c:2;
#endif
     } s1;
   } u1;
   static char c1[]={"item1 ok"};
   static char c2[]={"item1 ng"};
     u1.s1.a=3;
     u1.s1.b=2;
     u1.s1.c=1;
     if(u1.z==57)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
}
