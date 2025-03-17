





#include <stdio.h>

struct V { public: int i,j; int f(),g(); };

struct A { public: int a; };

struct B : public A, public virtual V { public: int i; int f(); };

struct C : public A, public virtual V { public: int j; int g(); };

struct D : public B, public C { public: void func(); };

int V::f() { return ++i; }
int V::g() { return ++j; }

int B::f() { a++; i++; j++; return i; }

int C::g() { a++; i++; j++; return j; }

void D::func() { i++; j++; f(); g(); }
int main()
{
    D dobj;
    B *pb = &dobj;
    C *pc = &dobj;
    V *pv = &dobj;

    pb->i = 0;    pb->a = 0;
    pc->j = 0;    pc->a = 0;    
    pv->i = 0;    pv->j = 0;

    dobj.func();
    if( dobj.V::f() == 2 )
        if( dobj.f() == 3 )
            if( dobj.V::g() == 3 )
                if( dobj.g() == 3 )
                    dobj.func();

    if( dobj.B::i == 5 && pb->a == 3 &&
        dobj.C::j == 5 && pc->a == 3 &&
        dobj.V::i == 4 && dobj.V::j == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
        
    
