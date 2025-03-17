class C {
public:
  int a,b;
};
typedef C TA [3];
typedef C (*TPA)[3];
typedef C (*TAPA[2])[3];
typedef C (*(*TPAPA)[2])[3];
typedef C (*(*TAPAPA[2])[2])[3];
C a[3]={{1,2},{3,4},{5,6}};
C b[3]={{7,8},{9,10},{11,12}};
C (*p1[2])[3]={&a,&b};
TA   *p2[2]={&a,&b};
TPA   p3[2]={&a,&b};
TAPA  p9 = {&a,&b};

TPA   p4 = &a;
C  (*p5)[3]=&a;

C (*(*p6[2])[2])[3]={&p1,&p1};
TA   *(*p7[2])[2]={&p2,&p2};
TPA   (*p8[2])[2]={&p3,&p3};
TAPA   *p10[2]={&p3,&p3};
TPAPA   p11[2]={&p3,&p3};
TAPAPA  p12={&p3,&p3};
#include <stdio.h>
int main(){
  puts("ok");
}
