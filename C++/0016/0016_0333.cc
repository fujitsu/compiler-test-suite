

class A {
 public:
  int aa,ab;
};
struct B : public A {
  int ba,bb;
  static int sa;
};
class C : public A, public B {
 public:
  int ca,cb;
};
class D : public virtual A, public B {
 public:
  int da,db;
  int f(int a){return a;}
};
class E : public virtual A {
 public:
  int e;
};
class F : public virtual A {
 public:
  int f;
};
class G : public E {
 public:
  int g;
};
class H : public F, public virtual A {
 public:
  int h;
};
class I : public G, public H, public virtual A {
 public:
  int i;
};

struct AA {
  int a;
  struct BB {
    int b;
  }bbobj;
};

A aobj;
B bobj;
C cobj;
D dobj;
I iobj;
AA aaobj;
int B::sa;
#include <stdio.h>
int main(){
  int AA::BB::* p = &AA::BB::b;
  aaobj.a         = 1;
  aaobj.bbobj.b   = 2;
  aobj.aa = 1;
  bobj.ba = 2;
  cobj.ca = 3;
  dobj.da = 4;
  dobj.f(1);
  iobj.aa = 1; iobj.e = 2; iobj.f = 3; iobj.g = 4;
  cobj.B::bb=20;
  cobj.B::aa=20;
  cobj.B::sa=20;

  puts("ok");
}
