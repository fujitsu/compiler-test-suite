





#include <stdio.h>
#include <string.h>

struct Stag {
    int a;
    int b;
};

int func1( struct Stag * );
int main()
{
    struct Stag g_st;
    struct Stag;
    Stag *l_p;
    struct Stag { char *p; } l_st;
    int i;

    g_st.a = 1;
    g_st.b = 2;
    l_st.p = "local";
    l_p = &l_st;
    i = func1( &g_st );

    if( i == 3 && !strcmp(l_p->p, "local") )
        printf("ok\n");
    else
        printf("ng\n");
}

int func1( struct Stag *p )
{
    return p->a + p->b;
}



    
