#include <stdio.h>

class A {  public: int x; A(); virtual void f(){} ~A(); };
class B : public virtual A { int x; public: B();~B(); };
class G : virtual B { char x; public: G(); ~G();};

class H : public virtual B,G 
{ public:char x; public: H(); ~H();}; 

A::A() { x=1;}
B::B() { x=2;}
G::G() { x=3;}
H::H() { x=4;}
A::~A() {}
B::~B() {}
G::~G() {}
H::~H() {}

int main() {
   H h;
   if ((h.B::A::x == 1) && (h.x ==4)){ printf("ok\n");}

}
