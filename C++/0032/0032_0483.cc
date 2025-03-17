
#include <stdio.h>

class X {
    private:
        int x1;
    protected:
        int x2;
    public:
        int x3;
        void f(int i) { x1 = i; x2 = i+1; x3 = i+2; }
        friend int gx(X *);
};

class Y : public X {
    public:
        void h(void) { x2++; x3++; } 
};

class A : public Y {
    public:
        void ha(void) { x2++; x3++; }
};

class B : protected Y {
    public:
        void fb(int i) { f(i+1); }
        void hb(void) { x2++; x3++; }
};

class C : private Y {
    public:
        void fc(int i) { f(i+2); }
        void hc(void) { x2++; x3++; }
};

int gx(X *px)
{
    return px->x1 + px->x2 + px->x3;
}
int main()
{
    A aobj;    aobj.f(1);
    B bobj;    bobj.fb(2);
    C cobj;    cobj.fc(3);

    aobj.h();    aobj.ha();    aobj.x3++;
    bobj.hb();
    cobj.hc();

    if( gx(&aobj) == 11 && gx((X *)&bobj) == 14 && gx((X *)&cobj) == 20 )
        printf("ok\n");
    else
        printf("ng\n");
}
