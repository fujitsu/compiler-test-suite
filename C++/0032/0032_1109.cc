#include <stdio.h>
class A {
 public:
  A* x(){ printf("ok\n");return 0;}
  A* y(){ return 0;}
};


class B : public A{
 public:
  B*  x(){ return (B*)A::x();} 
  int  f();
};

int B::f() { return x()==y();} 

int main(){
  B bobj;
  bobj.f();

}
