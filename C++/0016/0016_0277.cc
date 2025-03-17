typedef short TA [3];
typedef short (*TPA)[3];
typedef short (*TAPA[2])[3];
typedef short (*(*TPAPA)[2])[3];
typedef short (*(*TAPAPA[2])[2])[3];
short a[3]={1,2,3};
short b[3]={4,5,6};
short (*p1[2])[3]={&a,&b};
TA   *p2[2]={&a,&b};
TPA   p3[2]={&a,&b};
TAPA  p9 = {&a,&b};

TPA   p4 = &a;
short  (*p5)[3]=&a;

short (*(*p6[2])[2])[3]={&p1,&p1};
TA   *(*p7[2])[2]={&p2,&p2};
TPA   (*p8[2])[2]={&p3,&p3};
TAPA   *p10[2]={&p3,&p3};
TPAPA   p11[2]={&p3,&p3};
TAPAPA  p12={&p3,&p3};
#include <stdio.h>
int main(){
  puts("ok");
}
