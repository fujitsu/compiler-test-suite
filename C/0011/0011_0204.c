#include  <stdio.h>

 static char o1[]={"ok"};
 static char n1[]={"ng"};
 struct tag1 {
   union tag2 {
     int a;
     struct tag3 {
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
       unsigned long int b5:2;
       unsigned long int b4:2;
       unsigned long int b3:4;
       unsigned long int b2:16;
       unsigned long int b1:8;
#else
#if INT64
       unsigned long int b0:32;
#endif
       unsigned long int b1:8;
       unsigned long int b2:16;
       unsigned long int b3:4;
       unsigned long int b4:2;
       unsigned long int b5:2;
#endif
     } s2;
   } u1;
   int c;
 } s1;
int main() {
   int    fun1();
   void   ok(int a),ng(int a);
     s1.u1.a=-1000;
     fun1();
     s1.c=28;
     if(s1.u1.a==s1.c)
       {
         ok(1);
       }
     else
       {
         ng(1);
       }
 }
 int fun1() {
#if INT64
     s1.u1.s2.b0 = s1.u1.s2.b0 ^ s1.u1.s2.b0;
#endif
     s1.u1.s2.b1 = s1.u1.s2.b1 ^ s1.u1.s2.b1;
     s1.u1.s2.b2 = s1.u1.s2.b2 << 14;
     s1.u1.s2.b3 = s1.u1.s2.b3 | 0xf;
     s1.u1.s2.b3 = s1.u1.s2.b3 & 1;
     s1.u1.s2.b4 = s1.u1.s2.b4 | 3;
     s1.u1.s2.b5 = s1.u1.s2.b5 >> 1;
     return (s1.u1.a);
 }
 void ok(int a)
 {
     if(a==1)
       {
           printf("%s\n",o1);
       }
     else
       {
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
           printf("%s\n",n1);
       }
 }
