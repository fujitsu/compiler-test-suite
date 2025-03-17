#include <stdio.h>

class B { protected: int x2; };

class DD : public B {
    public: void f(int);
            void chk(int);
};

void DD::f(int i)
{
    B::x2 = i*2; 
}            

void DD::chk(int i)
{
    if( x2 == i )
        printf("ok\n");
    else
        printf("ng\n");
}
int main()
{
    DD ddobj;

    ddobj.f(2);
    ddobj.chk(4);
}
