





#include <stdio.h>
#include <string.h>

class Ctag {
public:
    int a;
    int b;
};

int func1( class Ctag * );
int main()
{
    class Ctag g_cl;
    class Ctag;
    Ctag *l_p;
    class Ctag { public: char *p; } l_cl;
    int i;

    g_cl.a = 1;
    g_cl.b = 2;
    l_cl.p = "local";
    l_p = &l_cl;
    i = func1( &g_cl );

    if( i == 3 && !strcmp(l_p->p, "local") )
        printf("ok\n");
    else
        printf("ng\n");
}

int func1( class Ctag *p )
{
    return p->a + p->b;
}



    
