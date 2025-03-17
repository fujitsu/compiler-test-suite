class A {
 public:
  virtual int func() = 0;
};

class B : public A {
 public:
  int func(){ return (int)1; }
};

class C : public B {
 public:
  int func(){ return (int)2; }
};

B bobj;
C cobj;
A *ap[2] = {&bobj, &cobj};
A &app1 = bobj, &app2 = cobj;
A *&appp1 = ap[0], *&appp2 = ap[1];

#include <stdio.h>
int main(){
  puts("ok");
}
