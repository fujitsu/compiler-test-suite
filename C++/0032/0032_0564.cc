





#include <stdio.h>

struct Stag {
    int a;
    int b;
};

Stag g_var;

int Stag( struct Stag* );
int main()
{
    struct Stag *ps;
    int i;

    g_var.a = 2;
    g_var.b = 3;
    ps = &g_var;
    i = Stag(ps);

    if( i == 5 )
        printf("ok\n");
    else
        printf("ng = %d\n",i);
}

int Stag ( struct Stag *p )
{
    return p->a + p->b;
}
