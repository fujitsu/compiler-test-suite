





#include <stdio.h>

int x = 0;

struct A { public: virtual void f(void)=0; };

struct B : public A { private: void f(void); };

struct C : public A { public: virtual void f(void)=0; };

struct D : public A { public: void f(void); };

struct E : public C { public: void f(void); };

struct F : public D { private: void f(void); };

struct G : public D { public: void f(void); };

void B::f(void) { x+=2; }

void D::f(void) { x+=3; }

void E::f(void) { x+=4; }

void F::f(void) { x+=5; }

void G::f(void) { x+=6; }
int main()
{
    B bobj;    A *pab = &bobj;
    D dobj;    A *pad = &dobj;    D *pd  = &dobj;
    E eobj;    A *pae = &eobj;    C *pce = &eobj;    E *pe = &eobj;
    F fobj;    A *paf = &fobj;    D *pdf = &fobj;    
    G gobj;    A *pag = &gobj;    D *pdg = &gobj;    G *pg = &gobj;

    pab->f(); 
    pad->f();
    pd ->f();
    pae->f();
    pce->f();
    pe ->f();
    paf->f();
    pdf->f();
    pag->f();
    pdg->f();
    pg ->f();

    if( x == 48 )
        printf("ok\n");
    else
        printf("ng\n");
}    

    
