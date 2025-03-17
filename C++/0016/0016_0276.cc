typedef int TA [3];
typedef int (*TPA)[3];
typedef int (*TAPA[2])[3];
typedef int (*(*TPAPA)[2])[3];
typedef int (*(*TAPAPA[2])[2])[3];
int a[3]={1,2,3};
int b[3]={4,5,6};
int (*p1[2])[3]={&a,&b};
TA   *p2[2]={&a,&b};
TPA   p3[2]={&a,&b};
TAPA  p9 = {&a,&b};

TPA   p4 = &a;
int  (*p5)[3]=&a;

int (*(*p6[2])[2])[3]={&p1,&p1};
TA   *(*p7[2])[2]={&p2,&p2};
TPA   (*p8[2])[2]={&p3,&p3};
TAPA   *p10[2]={&p3,&p3};
TPAPA   p11[2]={&p3,&p3};
TAPAPA  p12={&p3,&p3};
#include <stdio.h>
int main(){
  puts("ok");
}
