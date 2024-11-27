#include <stdio.h>
int main( ) {
struct  {
          unsigned long long    int a:2;
         } s;
struct  {
          unsigned long long    int  :16;
          unsigned long long    int a:2;
         } t;
struct  {
          unsigned long long    int  :30;
          unsigned long long    int a:2;
         } u;
struct  {
          unsigned long long    int  :31;
          unsigned long long    int a:2;
         } v;
struct  {
          unsigned long long    int  :32;
          unsigned long long    int a:2;
         } w;
struct  {
          unsigned long long    int  :48;
          unsigned long long    int a:2;
         } x;
struct  {
          unsigned long long    int  :62;
          unsigned long long    int a:2;
         } y;
s.a=1;
       if (s.a==1) printf("**(01) ok **\n");
       else        printf("**(01) ng %.2\n",s.a);

t.a=1;
       if (t.a==1) printf("**(02) ok **\n");
       else        printf("**(02) ng %.2\n",t.a);

u.a=1;
       if (u.a==1) printf("**(03) ok **\n");
       else        printf("**(03) ng %.2\n",u.a);

v.a=1;
       if (v.a==1) printf("**(04) ok **\n");
       else        printf("**(04) ng %.2\n",v.a);

w.a=1;
       if (w.a==1) printf("**(05) ok **\n");
       else        printf("**(05) ng %.2\n",w.a);

x.a=1;
       if (x.a==1) printf("**(06) ok **\n");
       else        printf("**(06) ng %.2\n",x.a);

y.a=1;
       if (y.a==1) printf("**(07) ok **\n");
       else        printf("**(07) ng %.2\n",y.a);

}

