
#include <stdio.h>

class A { private:   int x1;
          protected: int x2; 
          public:    void fa(int i) { x1 = i; }
                     friend int ga(A *); };
class B { protected: int x2; 
          public:    int x3; };
class C { public:    int x3;
          private:   int x1;
          public:    void fc(int i) { x1 = i; }
                     friend int gc(C *); };

int ga(A *pa)
{
    return pa->x1 +1;
}

int gc(C *pc)
{
    return pc->x1 -1;
}

class D { private: int x1;
          protected: public: int x3; 
          public: void fd(int i) { x1 = i; }
                  friend int gd(D *d); };
class E { public: private: protected: int x2;
          private: protected: public: private: int x1;
          public: void fe(int i) { x1 = i; }
                  friend int ge(E *e); };
class F { protected: public: private: protected: public: int x3;
          public: private: protected: public: private: protected: int x2; };

int gd(D *pd)
{
    return pd->x1 *2;
}

int ge(E *pe)
{
    return pe->x1 /2;
}

class AA : public A, public B, public C {
    public:
        void f(int,int,int);
        friend int gaa(AA *);
};

class BB : public D, public E, public F {
    public:
        void f(int,int,int);
        friend int gbb(BB *);
};

class CC : public A, public B, public C, public D, public E, public F {
    public:
        void f(int,int,int);
        friend int gcc(CC *);
};

void AA::f(int i, int j, int k)
{
    fa(i);     fc(i+2);
    A::x2 = j; B::x2 = j+2;
    B::x3 = k; C::x3 = k+2;
}

void BB::f(int i, int j, int k)
{
    fd(i-2);     fe(i);
    E::x2 = j-2; F::x2 = j;
    D::x3 = k-2; F::x3 = k;
}      

void CC::f(int i, int j, int k)
{
    fa(i);     fc(i+1);     fd(i+2);     fe(i+3);    
    A::x2 = j; B::x2 = j+1; E::x2 = j+2; F::x2 = j+3;
    B::x3 = k; C::x3 = k+1; D::x3 = k+2; F::x3 = k+3;
}

int gaa(AA *paa)    
{
    return ga(paa) + paa->A::x2 +
           paa->B::x2 + paa->B::x3 +
           paa->C::x3 + gc(paa);
}

int gbb(BB *pbb)
{
    return gd(pbb) + pbb->D::x3 +
           pbb->E::x2 + ge(pbb) +
           pbb->F::x3 + pbb->F::x2;
}

int gcc(CC *pcc)
{
    return ga(pcc) + pcc->A::x2 +
           pcc->B::x2 + pcc->B::x3 +
           pcc->C::x3 + gc(pcc) +
           gd(pcc) + pcc->D::x3 +
           pcc->E::x2 + ge(pcc) +
           pcc->F::x3 + pcc->F::x2;
}
int main()
{
    AA aaobj;
    BB bbobj;
    CC ccobj;

    aaobj.f(1,2,3);
    bbobj.f(2,4,8);
    ccobj.f(0,15,255);

    aaobj.B::x3++; aaobj.C::x3++;
    bbobj.D::x3++; bbobj.F::x3++;
    ccobj.B::x3--; ccobj.C::x3--; ccobj.D::x3--; ccobj.F::x3--;

    if( gaa(&aaobj) == 20 && gbb(&bbobj) == 23 && gcc(&ccobj) == 1094 )
        printf("ok\n");
    else
        printf("ng\n");
}
    
    
  


