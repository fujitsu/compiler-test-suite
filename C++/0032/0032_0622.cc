





#include <stdio.h>

int x=2,y=5;

struct enclose {
    public:
        int x;
        static int si;
        enum EN { e0, e1 } en;
        typedef int I;
        struct inner {
	public:
            I a;
            static int isi;
            friend void f(inner *, int);
        } in;
        friend void g(enclose *, int);
        void func(int);
};

void f(enclose::inner *p, int i)
{
    p->a = i;
    x += i;
    y += enclose::e1;
    enclose::si++;
}

void g(enclose *p, int i)
{
    p->x = i;
    p->en = p->en ? enclose::e0 : enclose::e1;
    f(&(p->in),i);
}

void enclose::func(int i)
{
    x = i;
    en = e0;
    inner::isi = i;
    f(&(this->in),i);
}

int enclose::si;
int enclose::inner::isi;
int main()
{
    enclose obj;

    enclose::si = 0;
    obj.func(5);
    f(&(obj.in), 3);
    g(&obj, 2);

    if( x == 12 && y == 8 &&
        enclose::si == 3 && enclose::inner::isi == 5 &&
        obj.x == 2 && obj.en == 1 && obj.in.a == 2 )
        printf("ok\n");
    else
        printf("ng\n");

}
                
