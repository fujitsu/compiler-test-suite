#include <stdio.h>
class A { char x; public: A(); virtual int f(); virtual int g(); };
class B : public virtual A { int  x; public: B(); };
class C : protected virtual B { char x; public: C(); };
class D : virtual A { char x; public: D(); };
class E : public B { char x; public: E(); virtual int f(); };
class F : public virtual A { char x; public: F(); };
class G : virtual B { char x; public: G(); };
class H : public virtual A, public virtual B, protected C,D,public E,public F,G { char x; public: H(); int g();};

A::A() { x=0X11; }
B::B() { x=0X22; }
C::C() { x=0X33; }
D::D() { x=0X44; }
E::E() { x=0X55; }
F::F() { x=0X66; }
G::G() { x=0X77; }
H::H() { x=0X88; }
int A::f() {printf("A::f\n"); return 0; }
int A::g() {printf("A::g\n"); return 0; }
int E::f() { return 1; }
int H::g() { return 1; }

int main() {
   H h;
   A *ap = &h;
   int val1 =0,val2=0;
  val1 = ap->f();
  val2 = ap->g();
  if (val1 == 1 && val2 ==1){
    printf("ok\n");
  } else {
    printf("ng\n");
  }
}
