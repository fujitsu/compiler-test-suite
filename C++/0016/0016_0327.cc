class A {
 public:
  int a;
  virtual void func() = 0;
};

class B : public A {
 public:
  int b;
  void func() { b=a; }
};

class C : public B {};

B bobj;
C cobj;
A *ap1 = &bobj, *ap2 = &cobj;  
A &app1 = bobj, &app2 = cobj;

#include <stdio.h>
int main(){
  puts("ok");
}
