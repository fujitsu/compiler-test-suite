
#include <stdio.h>

class A { private:   int x1;
          public:    void fa(int i) { x1 = i; }
                     friend int ga(A *); };
class B { protected: int x2; };
class C { public:    int x3; };

int ga(A *pa)
{
    return pa->x1 - 1;
}

class D { private: int x1;
          public:    void fd(int i) { x1 = i; }
                     friend int gd(D *); };
class E { private: protected: int x2; };
class F { private: protected: public: int x3; };
class G { private: protected: public: private: int x1;
          public:    void fg(int i) { x1 = i; }
                     friend int gg(G *); };
class H { private: protected: public: private: protected: int x2; };
class I { private: protected: public: private: protected: public: int x3; };

int gd(D *pd)
{
    return pd->x1 + 1;
}

int gg(G *pg)
{
    return pg->x1 * 2;
}

class AA : public A, public B, public C {
    public: void f(int); friend int gaa(AA *);
};

class BB : public D, public E, public F {
    public: void f(int); friend int gbb(BB *);
};

class CC : public D, public E, public F, public G, public H, public I {
    public: void f(int); friend int gcc(CC *);
};

class DD : public A, public B, public C, 
           public D, public E, public F, public G, public H, public I {
    public: void f(int); friend int gdd(DD *);
};

void AA::f(int i)
{
    fa(i);
    x2 = i*2;
    x3 = i*3;
}            

int gaa(AA *paa)
{
    return ga(paa) + paa->x2 + paa->x3;
}

void BB::f(int i)
{
    fd(i);
    x2 = i+2;
    x3 = i+3;
}            

int gbb(BB *pbb)
{
    return gd(pbb) + pbb->x2 + pbb->x3;
}

void CC::f(int i)
{
    fd(i); fg(i);
    E::x2 = i+2; H::x2 = i-2;
    F::x3 = i+3; I::x3 = i-3;
}            

int gcc(CC *pcc)
{
    return gd(pcc) + pcc->E::x2 + pcc->F::x3 +
           gg(pcc) + pcc->H::x2 + pcc->I::x3;
}

void DD::f(int i)
{
    fa(i); fd(i); fg(i);
    B::x2 = i*2; E::x2 = i+2; H::x2 = i-2;
    C::x3 = i*3; F::x3 = i+3; I::x3 = i-3;
}            

int gdd(DD *pdd)
{
    return ga(pdd) + pdd->B::x2 + pdd->C::x3 +
           gd(pdd) + pdd->E::x2 + pdd->F::x3 +
	   gg(pdd) + pdd->H::x2 + pdd->I::x3;
}
int main()
{
    AA aaobj;
    BB bbobj;
    CC ccobj;
    DD ddobj;

    aaobj.f(1);
    bbobj.f(3);
    ccobj.f(5);
    ddobj.f(10);

    aaobj.x3++;    bbobj.x3++;    ccobj.F::x3++; ccobj.I::x3++;
    ddobj.C::x3--; ddobj.F::x3--; ddobj.I::x3--;

    if( gaa(&aaobj) == 6 && gbb(&bbobj) == 16 &&
        gcc(&ccobj) == 38 && gdd(&ddobj) == 127 )
        printf("ok\n");
    else
        printf("ng\n");
}
