typedef long double TA [3];
typedef long double (*TPA)[3];
typedef long double (*TAPA[2])[3];
typedef long double (*(*TPAPA)[2])[3];
typedef long double (*(*TAPAPA[2])[2])[3];
long double a[3]={1,2,3};
long double b[3]={4,5,6};
long double (*p1[2])[3]={&a,&b};
TA   *p2[2]={&a,&b};
TPA   p3[2]={&a,&b};
TAPA  p9 = {&a,&b};

TPA   p4 = &a;
long double  (*p5)[3]=&a;

long double (*(*p6[2])[2])[3]={&p1,&p1};
TA   *(*p7[2])[2]={&p2,&p2};
TPA   (*p8[2])[2]={&p3,&p3};
TAPA   *p10[2]={&p3,&p3};
TPAPA   p11[2]={&p3,&p3};
TAPAPA  p12={&p3,&p3};
#include <stdio.h>
int main(){
  puts("ok");
}
