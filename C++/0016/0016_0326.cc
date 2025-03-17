struct A {
  virtual int func(){ return (int)1; }
};

struct B {
  virtual int func(){ return (int)2; }
};

struct C : A , B {
  int func(){ return (int)3; }
};

A aobj;
B bobj;
C cobj;
A *ap1 = &aobj, *ap2 = &cobj;
B *bp1 = &bobj, *bp2 = &cobj;
A &app1 = aobj, &app2 = cobj;
B &bpp1 = bobj, &bpp2 = cobj;

#include <stdio.h>
int main(){
  puts("ok");
}
