
#include <stdio.h>

struct A { private:   int x1;
           protected: int x2;
           public:    int x3; 
           public:    void fa(int i) { x1 = i; }
                      friend int ga(A *); };

int ga(A *pa)
{
    return pa->x1 *2;
}

struct B { private:   int x1;
           protected: int x2;
           public:    int x3;
           private:   int x11;
           protected: int x22;
           public:    int x33;
           public:    void fb(int i, int j) { x1 = i; x11 = j; }
                      friend int gb(B *); };

int gb(B *pb)
{
    return (pb->x1 + pb->x11 ) /2;
}

struct C { private:   int x1;
           protected: int x2;
           public:    int x3;
           protected: int x22;
           public:    int x33;
           private:   int x11;
           public:    int x333;
           private:   int x111;
           protected: int x222;
           public:    void fc(int i,int j,int k) { x1 = i; x11 = j; x111 = k; }
                      friend int gc(C *); };

int gc(C *pc)
{
    return ( pc->x1 + pc->x11 + pc->x111 ) /3;
}

struct X : public A, public B, public C {
    public:
        void f(int,int,int);
        friend int gx(X *);
};

void X::f(int i, int j, int k)
{
    fa(i);     fb(i,j);      fc(i,j,k);
    A::x2 = i; B::x2 = i*2;  C::x2 = i*10+1;
               B::x22 = j*2; C::x22 = j*10+2;
                             C::x222 = k*10+3;
    A::x3 = i; B::x3 = i*3;  C::x3 = i*100+1;
               B::x33 = j*3; C::x33 = j*100+2;
                             C::x333 = k*100+3;
}

int gx(X *px)
{
    return  ga(px) + gb(px) + gc(px) +
            px->A::x2 + px->B::x2 + px->B::x22 +
            px->C::x2 + px->C::x22 + px->x222 +
            px->A::x3 + px->B::x3 + px->B::x33 +
            px->C::x3 + px->C::x33 + px->x333;
}
int main()
{
    X xobj;

    xobj.f(1,2,3);

    xobj.A::x3++; xobj.B::x3+=2; xobj.B::x33+=3;
    xobj.C::x3/=2; xobj.C::x33/=3; xobj.C::x333/=4;

    if( gx(&xobj) == 286 )
        printf("ok\n");
    else
        printf("ng\n");
}
