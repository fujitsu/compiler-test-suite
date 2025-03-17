#include <stdio.h>
struct A {
  int a;
  int b;
};

struct B {
  int c;
  int d;
};

struct C : public A, public B {
  int e;
  int f;
  C() { a=1; b=2; c=3; d=4; e=5; f=6; }
 
};

void func(B*& bp)
{
  printf("ng\n");
}

void func(B*const& bp)
{
  printf("ok\n");
}
int main()
{
  C cobj,*const cp = &cobj;
  B *bp;
  B *const&br = cp;
  cobj.d = 10;
  func (cp);

}
