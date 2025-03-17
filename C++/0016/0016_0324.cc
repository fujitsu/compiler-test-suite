struct A {
  virtual int func(){ return (int)1; }
};

struct B : A {
  int func(){ return (int)2; }
};

struct C : B {
  int func(){ return (int)3; }
};

A aobj;
B bobj;
C cobj;
A *ap[3] = {&aobj, &bobj, &cobj};
B *bp[2] = {&bobj, &cobj};
A &app1 = aobj, &app2 = bobj, &app3 = cobj;
B &bpp1 = bobj, &bpp2 = cobj;
A *&appp1 = ap[0], *&appp2 = ap[1], *&appp3 = ap[2];
B *&bppp1 = bp[0], *&bppp2 = bp[1];

#include <stdio.h>
int main(){
  puts("ok");
}
