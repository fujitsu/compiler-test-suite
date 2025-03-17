#include <stdio.h>
class A {
public:
  virtual void f() = 0;
  A() { A::f(); }
};

void A::f(){ }


int main(){
 printf("ok\n");
}
