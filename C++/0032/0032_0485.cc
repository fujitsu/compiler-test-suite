
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

class Y : private X {
    public:
        void ff(int i) { f(i); }
        void h(void) { x2++; x3++; } 
};

class A : public Y {
    public:
        void fa(int i) { ff(i); }
        void ha(void) { h(); }
};

class B : protected Y {
    public:
        void fb(int i) { ff(i+1); }
        void hb(void) { h(); }
};

class C : private Y {
    public:
        void fc(int i) { ff(i+2); }
        void hc(void) { h(); }
};

int gx(X *px)
{
    return px->x1 + px->x2 + px->x3;
}
int main()
{
    A aobj;    aobj.fa(1);
    B bobj;    bobj.fb(2);
    C cobj;    cobj.fc(3);

    aobj.ha();
    bobj.hb();
    cobj.hc();

    if( gx((X *)&aobj) == 8 && gx((X *)&bobj) == 14 && gx((X *)&cobj) == 20 )
        printf("ok\n");
    else
        printf("ng\n");
}
