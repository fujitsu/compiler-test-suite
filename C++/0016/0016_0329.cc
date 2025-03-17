class A {
 public:
  virtual int func() = 0;
};

class B : public A {
 public:
  int func(){ return (int)1; }
};

class C : public A {
 public:
  int func(){ return (int)2; }
};

B bobj;
C cobj;
A *ap[2] = {&bobj, &cobj};
A &app1 = bobj, &app2 = cobj;

#include <stdio.h>
int main(){
  puts("ok");
}
