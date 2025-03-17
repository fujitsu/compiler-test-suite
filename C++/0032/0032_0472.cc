
#include <stdio.h>

union A { private:   int x1;
          public:    void f(int i) { x1 = i; }
                     friend int ga(A *); };
union B { protected: int x2;
          public:    void f(int i) { x2 = i; }
                     friend int gb(B *); };
union C { public:    int x3; };

union D { private: protected: int x2;
          public:    void f(int i) { x2 = i; }
                     friend int gd(D *); };
union E { private: protected: public: int x3; };
union F { private: protected: public: private: int x1;
          public:    void f(int i) { x1 = i; }
                     friend int gf(F *); };
union G { private: protected: public: private: protected: int x2;
          public:    void f(int i) { x2 = i; }
                     friend int gg(G *); };
union H { private: protected: public: private: protected: public: int x3; };

int ga(A *pa) { return pa->x1 + 1; }
int gb(B *pb) { return pb->x2 + 2; }
int gd(D *pd) { return pd->x2 + 3; }
int gf(F *pf) { return pf->x1 + 4; }
int gg(G *pg) { return pg->x2 + 5; }
int main()
{
    A aobj;  aobj.f(1);
    B bobj;  bobj.f(2);
    C cobj;  cobj.x3 = 4;
    D dobj;  dobj.f(8);
    E eobj;  eobj.x3 = 16;
    F fobj;  fobj.f(32);
    G gobj;  gobj.f(64);
    H hobj;  hobj.x3 = 128;

    cobj.x3++; eobj.x3++; hobj.x3++;

   if( ga(&aobj) == 2 && gb(&bobj) == 4 && cobj.x3 == 5 &&
       gd(&dobj) == 11 && eobj.x3 == 17 && gf(&fobj) == 36 &&
       gg(&gobj) == 69 && hobj.x3 == 129 )
        printf("ok\n");
    else
        printf("ng\n");
}
