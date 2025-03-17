





#include <stdio.h>

int x = 0;

class A { public: void f(); };

class B : private virtual A { };

class C : public virtual A { };

class D : public B, public C {
    public:
  void f() { A::f(); };
};

void A::f() { x++; }

struct E { public: void g(); };

struct F : private virtual E { };

struct G : public virtual E { };

struct H : public F, public G {
    public:
  void g() { E::g(); };
};

void E::g() { x+=2; }
int main()
{
    D dobj;
    H hobj;

    dobj.f();
    hobj.g();

    if( x == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
