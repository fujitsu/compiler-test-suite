





#include <stdio.h>

class Ctag { public: int a; };

void func( class Ctag * );
int main()
{
    class Ctag *p = new Ctag;
    p->a = 1;
    func(p);

    if( p->a == 2 )
        printf("ok\n");
    else
        printf("ng\n");

    delete p;
}

void func( class Ctag *p )
{
    (p->a)++;
}
