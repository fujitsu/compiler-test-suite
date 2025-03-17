int g=2;
class D {
public:
  int a,*b;
  D():a(1),b(&g){}
};
D dobj;
D &dobjr=dobj;
typedef D DT;
typedef DT &DTR;
DT  dtobj;
DTR dtobjr=dtobj;

class E {
public:
  D   * dp;
  int D::*mdp;
  E():dp(&dobj),mdp(&D::a){}
};
E eobj;
E &eobjr=eobj;
typedef E ET;
typedef ET &ETR;
ET  etobj;
ETR etobjr=etobj;

int D::*p1 = &D::a;
int D::*(*p2)=&p1;

D   * E::*p3 = &E::dp;
int D::*E::*p4 = &E::mdp;
#include <stdio.h>
int main(){
  puts("ok");
}
