





#include <stdio.h>
#include <string.h>

union Utag {
    int a;
    int b;
};

int func1( union Utag * );
int main()
{
    union Utag g_un;
    union Utag;
    Utag *l_p;
    union Utag { char *p; } l_un;
    int i;

    g_un.a = 1;
    g_un.b = 2;
    l_un.p = "local";
    l_p = &l_un;
    i = func1( &g_un );

    if( i == 4 && !strcmp(l_p->p, "local") )
        printf("ok\n");
    else
        printf("ng\n");
}

int func1( union Utag *p )
{
    return p->a + p->b;
}



    
