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
  printf("ok\n");
}

void func(B*const& bp)
{
  
  
  printf("ng\n");
}
int main()
{
  C cobj,*cp;
  B *bp;
  cp = &cobj;
  B *const&br = cp;
  cobj.d = 10;
  func (bp);

}
