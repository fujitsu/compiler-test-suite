#include  <stdio.h>



 struct tag1 {
   union tag2 {
     int a;
     struct tag3 {
       unsigned long int b1:8;
       unsigned long int b2:16;
       unsigned long int b3:4;
       unsigned long int b4:2;
       unsigned long int b5:2;
     } s2;
   } u1;
 } s1;
int main() {
   int    fun1();
     s1.u1.a=-1000;
     fun1();

#if (defined(BYTE_ORDER) && (BYTE_ORDER == LITTLE_ENDIAN)) \
 || defined(__aarch64__) || defined(__x86_64__)
     if(s1.u1.a==0x71000000)
#else
     if(s1.u1.a==28)
#endif
       {
         printf("ok\n"); 
       }
     else
       {
         printf("ng %x\n",s1.u1.a); 
       }
 }
 int fun1() {
     s1.u1.s2.b1 = s1.u1.s2.b1 ^ s1.u1.s2.b1;
     s1.u1.s2.b2 = s1.u1.s2.b2 << 14;
     s1.u1.s2.b3 = s1.u1.s2.b3 | 0xf;
     s1.u1.s2.b3 = s1.u1.s2.b3 & 1;
     s1.u1.s2.b4 = s1.u1.s2.b4 | 3;
     s1.u1.s2.b5 = s1.u1.s2.b5 >> 1;
     return (s1.u1.a);
 }
