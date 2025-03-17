struct A {
  virtual int func(){ return (int)1; }
  int func1(){ return (int)1; }
};

class B : public A {
 public:
  int func(){ return (int)2; }
  int func1(int){ return (int)2; }
};

A aobj;
B bobj;
A *ap1 = &aobj, *ap2 = &bobj;
A **ap3 = &ap2;
A &app1 = aobj, &app2 = bobj;

#include <stdio.h>
int main(){
  puts("ok");
}
