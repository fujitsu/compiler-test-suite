

#include <stdio.h>
class X { public: int a; void g();};
class Y { public: int b; static int s;};
class Z { public: int c; static int ss;};
class A : public Y,public virtual X { public: int aa; };
class B : public Z,public virtual X { public: int bb; };
class C : public virtual X { public: int cc; };
class D : public A, public B, public C { public: int dd; };

int Y::s = 10;
int Z::ss= 20;
int main(){
  D dobj;
  dobj.a = 1;
  dobj.b = 2;
  dobj.c = 3;
  dobj.aa = 4;
  dobj.bb = 5;
  dobj.cc = 6;
  dobj.dd = 7;

  puts("ok");
};
