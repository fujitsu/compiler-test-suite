
#include <stdio.h>

union A { private:   int x1;
          protected: int x2; 
          public:    void f(int i) { x1 = i; x2 = i+1; }
                     friend int ga(A *); };
union B { protected: int x2; 
          public:    int x3; 
          public:    void f(int i) { x2 = i; }
                     friend int gb(B *); };
union C { public:    int x3;
          private:   int x1;
          public:    void f(int i) { x1 = i; }
                     friend int gc(C *); };
union D { private: int x1;
          protected: public: int x3; 
          public: void f(int i) { x1 = i; }
                  friend int gd(D *d); };
union E { public: private: protected: int x2;
          private: protected: public: private: int x1;
          public: void f(int i) { x1 = i; x2 = i-1; }
                  friend int ge(E *e); };
union F { protected: public: private: protected: public: int x3;
          public: private: protected: public: private: protected: int x2; 
          public:    void f(int i) { x2 = i; }
                     friend int gf(F *); };


int ga(A *pa) { return pa->x1 + pa->x2; }
int gb(B *pb) { return pb->x2 +1; }
int gc(C *pc) { return pc->x1 -1; }
int gd(D *pd) { return pd->x1 *2; }
int ge(E *pe) { return pe->x1 - pe->x2; }
int gf(F *pf) { return pf->x2 /2; }
int main()
{
    A aobj;    aobj.f(5);
    B bobj;    bobj.f(10);
    C cobj;    cobj.f(15);
    D dobj;    dobj.f(20);
    E eobj;    eobj.f(25);
    F fobj;    fobj.f(30);

    bobj.x3++; cobj.x3--; dobj.x3*=2; fobj.x3/=2;

    if( ga(&aobj) == 12 && gb(&bobj) == 12 && gc(&cobj) ==13 &&
        gd(&dobj) == 80 && ge(&eobj) == 0  && gf(&fobj) == 7 )
        printf("ok\n");
    else
        printf("ng\n");
}
    
    
  


