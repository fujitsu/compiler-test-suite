int g=2;
class D {
public:
  int a,*b;
  D():a(1),b(&g){}
};
D dobj;

class E {
public:
  D   * dp;
  int D::*mdp;
  E():dp(&dobj),mdp(&D::a){}
};
E eobj;

int D::*p1 = &D::a;
int D::*(*p2)=&p1;

D   * E::*p3 = &E::dp;
int D::*E::*p4 = &E::mdp;
#include <stdio.h>
int main(){puts("ok");
}





