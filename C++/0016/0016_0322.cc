struct A {
  virtual void func() {};
};

class B : public A {};
class C : public B {};

A aobj;
B bobj;
C cobj;
A *ap1 = &aobj, *ap2 = &bobj, *ap3 = &cobj;
A &app1 = aobj, &app2 = bobj, &app3 = cobj;

#include <stdio.h>
int main(){
  puts("ok");
}
