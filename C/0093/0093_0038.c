#include <stdio.h>
int main( ) {
struct  {
          unsigned long long    int  :48;
          unsigned long long    int a:16;
         } s;
struct  {
          unsigned long long    int  :32;
          unsigned long long    int a:32;
         } t;
struct  {
          unsigned long long    int  :16;
          unsigned long long    int a:48;
         } u;
struct  {
          unsigned long long    int a:64;
         } v;
struct  {
          signed long long    int  :48;
          signed long long    int a:16;
         } w;
struct  {
          signed long long    int  :32;
          signed long long    int a:32;
         } x;
struct  {
          signed long long    int  :16;
          signed long long    int a:48;
         } y;
struct  {
          signed long long    int a:64;
         } z;
struct  {
          unsigned long long    int  :8;
          unsigned long long    int a:16;
         } a;
struct  {
          signed long long    int  :8;
          signed long long    int a:16;
         } b;
s.a=0xffff;
       if (s.a==0xffff) printf("**(01) ok **\n");
       else        printf("**(01) ng %.16x\n",s.a);

t.a=0x8fffffffULL;
       if (t.a==0x8fffffffULL) printf("**(02) ok **\n");
       else        printf("**(02) ng %.32x\n",t.a);

u.a=0xffff0000ffff;
       if (u.a==0xffff0000ffff) printf("**(03) ok **\n");
       else        printf("**(03) ng %.48x\n",u.a);

v.a=0xffffffff00000000;
       if (v.a==0xffffffff00000000) printf("**(04) ok **\n");
       else        printf("**(04) ng %.64x\n",v.a);

w.a=0xffff;
       if (w.a==-1) printf("**(05) ok **\n");
       else             printf("**(05) ng %.16x\n",w.a);

x.a=0xf0f0f0f0;
       if (x.a==0xfffffffff0f0f0f0) printf("**(06) ok **\n");
       else                 printf("**(06) ng %.32x\n",x.a);

y.a=0xffff0000ffff;
       if (y.a==0xffffffff0000ffff) printf("**(07) ok **\n");
       else                     printf("**(07) ng %.48x\n",y.a);

z.a=-1;
       if (z.a==-1) printf("**(08) ok **\n");
       else         printf("**(08) ng %.64x\n",z.a);

a.a=0xf0ff;
       if (a.a==0xf0ff) printf("**(09) ok **\n");
       else         printf("**(09) ng %.16\n",a.a);

b.a=0x00ff;
       if (b.a==0x00ff) printf("**(10) ok **\n");
       else         printf("**(10) ng %.16\n",b.a);
}

