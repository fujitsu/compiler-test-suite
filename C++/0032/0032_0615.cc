





#include <stdio.h>

int x=2,y=5;

class enclose {
    public:
        int x;
        static int si;
        enum EN { e0, e1 } en;
        typedef int I;
        class inner {
	public:
            I a;
            static int isi;
            void f(int i)
            {
                a = i;
                ::x += i;
                y += e1;
                si++;
	    }
            void g(enclose *p, int i)
	    {
                p->x = i;
                p->en = p->en ? e0 : e1;
                inner::f(i);
	    }
        } in;
        void func(int);
};

void enclose::func(int i)
{
    x = i;
    en = e0;
    inner::isi = i;
    in.f(i);
}

int enclose::si;
int enclose::inner::isi;
int main()
{
    enclose obj;

    enclose::si = 0;
    obj.func(5);
    obj.in.f(3);
    obj.in.g(&obj, 2);

    if( x == 12 && y == 8 &&
        enclose::si == 3 && enclose::inner::isi == 5 &&
        obj.x == 2 && obj.en == 1 && obj.in.a == 2 )
        printf("ok\n");
    else
        printf("ng\n");

}
                
