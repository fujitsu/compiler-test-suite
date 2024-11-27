#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
int main( ) {
struct t {
          unsigned long long int a:8;
          unsigned long long int b:8;
          unsigned long long int c:8;
          unsigned long long int d:8;
          unsigned long long int e:8;
          unsigned long long int f:8;
          unsigned long long int g:8;
          unsigned long long int h:8;
         } x;
struct t   s;
unsigned char  zzz=0xff;
signed long long int xxx;
x.a=x.b=x.c=x.d=x.e=x.f=x.g=x.h=zzz;
s=x;
if (s.a==0xff) printf("**kaimk2021-(01) ok **\n");
else           printf("**kaimk2021-(01) ng %x\n",s.a);
if (s.b==0xff) printf("**kaimk2021-(02) ok **\n");
else           printf("**kaimk2021-(02) ng %x\n",s.b);
if (s.c==0xff) printf("**kaimk2021-(03) ok **\n");
else           printf("**kaimk2021-(03) ng %x\n",s.c);
if (s.d==0xff) printf("**kaimk2021-(04) ok **\n");
else           printf("**kaimk2021-(04) ng %x\n",s.d);
if (s.e==0xff) printf("**kaimk2021-(05) ok **\n");
else           printf("**kaimk2021-(05) ng %x\n",s.e);
if (s.f==0xff) printf("**kaimk2021-(06) ok **\n");
else           printf("**kaimk2021-(06) ng %x\n",s.f);
if (s.g==0xff) printf("**kaimk2021-(07) ok **\n");
else           printf("**kaimk2021-(07) ng %x\n",s.g);
if (s.h==0xff) printf("**kaimk2021-(08) ok **\n");
else           printf("**kaimk2021-(08) ng %x\n",s.h);
memcpy(&xxx,&s,sizeof(struct t));
if (xxx==-1) printf("**kaimk2021-(09) ok **\n");
else         printf("**kaimk2021-(09) ng %x\n",xxx);
exit (0);
}



