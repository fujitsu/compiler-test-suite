class C {
public:
  int a,b;
};
typedef C T;
typedef T TA [3];
typedef T (*TPA)[3];
typedef T (*TAPA[2])[3];
typedef T (*(*TPAPA)[2])[3];
typedef T (*(*TAPAPA[2])[2])[3];
T a[3]={{1,2},{3,4},{5,6}};
T b[3]={{7,8},{9,10},{11,12}};
T (*p1[2])[3]={&a,&b};
TA   *p2[2]={&a,&b};
TPA   p3[2]={&a,&b};
TAPA  p9 = {&a,&b};

TPA   p4 = &a;
T  (*p5)[3]=&a;

T (*(*p6[2])[2])[3]={&p1,&p1};
TA   *(*p7[2])[2]={&p2,&p2};
TPA   (*p8[2])[2]={&p3,&p3};
TAPA   *p10[2]={&p3,&p3};
TPAPA   p11[2]={&p3,&p3};
TAPAPA  p12={&p3,&p3};
#include <stdio.h>
int main(){
  puts("ok");
}
