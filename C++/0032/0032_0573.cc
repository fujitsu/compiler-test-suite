





#include <stdio.h>

struct Stag { int a; };

void func( struct Stag * );
int main()
{
    struct Stag *p = new Stag;
    p->a = 1;
    func(p);

    if( p->a == 2 )
        printf("ok\n");
    else
        printf("ng\n");

    delete p;
}

void func( struct Stag *p )
{
    (p->a)++;
}
