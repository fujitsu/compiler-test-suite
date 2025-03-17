




#include <stdio.h>

struct A { 
    public:
        int i;
        void func(A &);
};

struct B : public A { };

struct C : public B {
    public:
        int i;
        void func(C &);
};

void A::func(A &aobj)
{
    i++;
}

void C::func(C &cobj)
{
    A::i++;
    i++;
    A::func(cobj);
}
int main()
{
    C cobj;

    cobj.A::i = 10;
    cobj.i = 5;
    cobj.func(cobj);
    cobj.A::func(cobj);
    cobj.B::func(cobj);

    A *pa = &cobj;

    if( pa->i == 14 && cobj.i == 6 )
        printf("ok\n");
    else
        printf("ng\n");
}    
