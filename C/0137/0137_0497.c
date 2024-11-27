#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
{
int z=3;
static struct  {
          unsigned long long    int a:2;
         } s;
static struct  {
          unsigned long long    int  :17;
          unsigned long long    int a:2;
         } t;
static struct  {
          unsigned long long    int  :30;
          unsigned long long    int a:2;
         } u;
static struct  {
          unsigned long long    int  :31;
          unsigned long long    int a:2;
         } v;
static struct  {
          unsigned long long    int  :32;
          unsigned long long    int a:2;
         } w;
static struct  {
          unsigned long long    int  :48;
          unsigned long long    int a:2;
         } x;
static struct  {
          unsigned long long    int  :62;
          unsigned long long    int a:2;
         } y;
s.a=z;
       if (s.a==3) printf("**kaimk017-(01) ok **\n");
       else        printf("**kaimk017-(01) ng %x\n",s.a);

t.a=z;
       if (t.a==3) printf("**kaimk017-(02) ok **\n");
       else        printf("**kaimk017-(02) ng %x\n",t.a);

u.a=z;
       if (u.a==3) printf("**kaimk017-(03) ok **\n");
       else        printf("**kaimk017-(03) ng %x\n",u.a);

v.a=z;
       if (v.a==3) printf("**kaimk017-(04) ok **\n");
       else        printf("**kaimk017-(04) ng %x\n",v.a);

w.a=z;
       if (w.a==3) printf("**kaimk017-(05) ok **\n");
       else        printf("**kaimk017-(05) ng %x\n",w.a);

x.a=z;
       if (x.a==3) printf("**kaimk017-(06) ok **\n");
       else        printf("**kaimk017-(06) ng %x\n",x.a);

y.a=z;
       if (y.a==3) printf("**kaimk017-(07) ok **\n");
       else        printf("**kaimk017-(07) ng %x\n",y.a);

}
{
int z=1;
static struct  {
          signed long long    int a:2;
         } s;
static struct  {
          signed long long    int  :17;
          signed long long    int a:2;
         } t;
static struct  {
          signed long long    int  :30;
          signed long long    int a:2;
         } u;
static struct  {
          signed long long    int  :31;
          signed long long    int a:2;
         } v;
static struct  {
          signed long long    int  :32;
          signed long long    int a:2;
         } w;
static struct  {
          signed long long    int  :48;
          signed long long    int a:2;
         } x;
static struct  {
          signed long long    int  :62;
          signed long long    int a:2;
         } y;
s.a=z;
       if (s.a==1) printf("**kaimk017-(08) ok **\n");
       else        printf("**kaimk017-(08) ng %x\n",s.a);

t.a=z;
       if (t.a==1) printf("**kaimk017-(09) ok **\n");
       else        printf("**kaimk017-(09) ng %x\n",t.a);

u.a=z;
       if (u.a==1) printf("**kaimk017-(10) ok **\n");
       else        printf("**kaimk017-(10) ng %x\n",u.a);

v.a=z;
       if (v.a==1) printf("**kaimk017-(11) ok **\n");
       else        printf("**kaimk017-(11) ng %x\n",v.a);

w.a=z;
       if (w.a==1) printf("**kaimk017-(12) ok **\n");
       else        printf("**kaimk017-(12) ng %x\n",w.a);

x.a=z;
       if (x.a==1) printf("**kaimk017-(13) ok **\n");
       else        printf("**kaimk017-(13) ng %x\n",x.a);

y.a=z;
       if (y.a==1) printf("**kaimk017-(14) ok **\n");
       else        printf("**kaimk017-(14) ng %x\n",y.a);

}

exit (0);
}

