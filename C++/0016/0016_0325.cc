struct A {
  virtual int func(){ return (int)1; }
};

struct B : A {
  int func(){ return (int)2; }
};

struct C : A {
  int func(){ return (int)3; }
};

A aobj;
B bobj;
C cobj;
A *ap[3] = {&aobj, &bobj, &cobj};
A &app1 = aobj, &app2 = bobj, &app3 = cobj;

#include <stdio.h>
int main(){
  puts("ok");
}
