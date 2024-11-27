#include <stdio.h>
int main( ) {
{
int z=3;
struct  {
          unsigned long long    int a:2;
         } s;
struct  {
          unsigned long long    int  :17;
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
s.a=z;
       if (s.a==3) printf("**(01) ok **\n");
       else        printf("**(01) ng %x\n",s.a);

t.a=z;
       if (t.a==3) printf("**(02) ok **\n");
       else        printf("**(02) ng %x\n",t.a);

u.a=z;
       if (u.a==3) printf("**(03) ok **\n");
       else        printf("**(03) ng %x\n",u.a);

v.a=z;
       if (v.a==3) printf("**(04) ok **\n");
       else        printf("**(04) ng %x\n",v.a);

w.a=z;
       if (w.a==3) printf("**(05) ok **\n");
       else        printf("**(05) ng %x\n",w.a);

x.a=z;
       if (x.a==3) printf("**(06) ok **\n");
       else        printf("**(06) ng %x\n",x.a);

y.a=z;
       if (y.a==3) printf("**(07) ok **\n");
       else        printf("**(07) ng %x\n",y.a);

}
{
int z=1;
struct  {
          signed long long    int a:2;
         } s;
struct  {
          signed long long    int  :17;
          signed long long    int a:2;
         } t;
struct  {
          signed long long    int  :30;
          signed long long    int a:2;
         } u;
struct  {
          signed long long    int  :31;
          signed long long    int a:2;
         } v;
struct  {
          signed long long    int  :32;
          signed long long    int a:2;
         } w;
struct  {
          signed long long    int  :48;
          signed long long    int a:2;
         } x;
struct  {
          signed long long    int  :62;
          signed long long    int a:2;
         } y;
s.a=z;
       if (s.a==1) printf("**(08) ok **\n");
       else        printf("**(08) ng %x\n",s.a);

t.a=z;
       if (t.a==1) printf("**(09) ok **\n");
       else        printf("**(09) ng %x\n",t.a);

u.a=z;
       if (u.a==1) printf("**(10) ok **\n");
       else        printf("**(10) ng %x\n",u.a);

v.a=z;
       if (v.a==1) printf("**(11) ok **\n");
       else        printf("**(11) ng %x\n",v.a);

w.a=z;
       if (w.a==1) printf("**(12) ok **\n");
       else        printf("**(12) ng %x\n",w.a);

x.a=z;
       if (x.a==1) printf("**(13) ok **\n");
       else        printf("**(13) ng %x\n",x.a);

y.a=z;
       if (y.a==1) printf("**(14) ok **\n");
       else        printf("**(14) ng %x\n",y.a);

}

}

