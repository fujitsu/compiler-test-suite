
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
  virtual void vf(){};
};
I iobj;
#include <stdio.h>
int main(){
  puts("ok");
}
