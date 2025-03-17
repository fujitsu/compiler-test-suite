





#include <stdio.h>







#if defined __GNUC__ || ((__cplusplus) && __cplusplus >= 201103L)
int val_sx();
int val_sa();
#endif

struct X {
    protected:
        int x;
        static int sx;
    public:
        void set(int i) { x = i; }
	friend int val_sx() { return X::sx; }
};

int X::sx = 0;

struct A : public X {
    protected:
        int a;
        static int sa;
    public:
        void set(int i) { a = i; X::set(i); }
        int val_a(void) { return a; }
        int val_x(void) { return x; }
        void f(void);
        friend void ff1(A *);
        friend void ff2(A &);
        friend int val_sa() { return A::sa; }
};

int A::sa = 0;

void A::f(void)
{
      x++;
      X::sx++;
}

struct B : public A {
    public:
        void set(int i) { A::set(i); }
        void g(void);
        friend void fg1(B *);
        friend void fg2(B &);
};

void B::g(void)
{
    x++;
    X::sx++;
    a++;
    A::sa++;
}

void ff1(A *pa)
{
    pa->x++;
    pa->sa++;
}

void ff2(A &ra)
{
    ra.x++;
    ra.sx++;
}

void fg1(B *pb)
{
    pb->x++;
    pb->sx++;
    pb->a++;
    pb->sa++;
}

void fg2(B &rb)
{
    rb.x++;
    rb.sx++;
    rb.a++;
    rb.sa++;
}
int main()
{
    A aobj;    aobj.set(10);
    B bobj;    bobj.set(20);

    aobj.f();
    ff1(&aobj);
    ff2(aobj);

    bobj.f();
    ff1(&bobj);
    ff2(bobj);
    bobj.g();
    fg1(&bobj);
    fg2(bobj);
   
    if( aobj.val_x() == 13 && aobj.val_a() == 10 &&
        bobj.val_x() == 26 && bobj.val_a() == 23 &&
        val_sx() == 7 && val_sa() == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}
