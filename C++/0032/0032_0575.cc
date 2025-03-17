





#include <stdio.h>

union Utag { int a; };

void func( union Utag * );
int main()
{
    union Utag *p = new Utag;
    p->a = 1;
    func(p);

    if( p->a == 2 )
        printf("ok\n");
    else
        printf("ng\n");

    delete p;
}

void func( union Utag *p )
{
    (p->a)++;
}
