





#include <stdio.h>

int x=0;

class A { public: int f(); };

class B : virtual A { public: int f(); };

class C : public B { } ;

class D : public C, public virtual A { public: int g(); int h(); };

class E : public virtual D { public: int g(); };

class F : public E { };

class G : public virtual D { } ;

class H : public G { public: int g(); int h(); };

class I : public virtual D, public F, public H { public: void func(); };

int A::f() { return 1; }

int B::f() { return 2; }

int D::g() { return 10; }

int D::h() { return 100; }

int E::g() { return 20; }

int H::g() { return 30; }

int H::h() { return 200; }

void I::func()
{
    x += f();             
    x += h();             

    x += E::g();
}
int main()
{
    I iobj;

    iobj.func();

    F *pf = &iobj;

    x += pf->g();         
    x += pf->h();         

    D *pd = &iobj;

    x += pd->f();         
    x += pd->g();         
    x += pd->h();         
    x += pd->A::f();

    H *ph = &iobj;

    x += ph->h();         
    x += ph->g();         

    if( x == 685 )
        printf("ok\n");
    else
        printf("ng\n");
}
