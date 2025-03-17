#include <stdio.h>
class A { char x; public: A(); virtual void f(); virtual void g(); };
class B : public virtual A { int  x; public: B(); };
class C : protected virtual B { char x; public: C(); };
class D : virtual A { char x; public: D(); };
class E : virtual public B { char x; public: E(); virtual void f(); };
class F : public virtual A { char x; public: F(); };
class G : virtual B { char x; public: G(); };
class H : public virtual A, public virtual B, protected C,D,public E,public F,G { char x; public: H(); };

A::A() { x=0X11; }
B::B() { x=0X22; }
C::C() { x=0X33; }
D::D() { x=0X44; }
E::E() { x=0X55; }
F::F() { x=0X66; }
G::G() { x=0X77; }
H::H() { x=0X88; }
void A::f() {printf("A::f\n"); }
void A::g() {printf("A::g\n"); }
void E::f() {printf("ok\n"); }
int main() {
   H h;
   A *ap = &h;
  ap->f();
}
