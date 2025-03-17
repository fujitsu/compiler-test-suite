





#include <stdio.h>

class Ctag {
public:
    int a;
    int b;
};

Ctag g_var;

int Ctag( class Ctag* );
int main()
{
    class Ctag *pc;
    int i;

    g_var.a = 2;
    g_var.b = 3;
    pc = &g_var;
    i = Ctag(pc);

    if( i == 5 )
        printf("ok\n");
    else
        printf("ng\n");
}

int Ctag ( class Ctag *p )
{
    return p->a + p->b;
}
