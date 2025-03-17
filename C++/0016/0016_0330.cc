class A {
 public:
  virtual int func() = 0;
};

class B {
 public:
  virtual int func() = 0;
};

class C : public A , public B {
 public:
  int func(){ return (int)1; }
};

C cobj;
A *ap = &cobj;
B *bp = &cobj;
A &app1 = cobj, *&appp1 = ap;
B &bpp1 = cobj, *&bppp1 = bp;

#include <stdio.h>
int main(){
  puts("ok");
}
