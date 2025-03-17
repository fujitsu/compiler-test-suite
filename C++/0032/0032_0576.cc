struct A {
    signed char      sc;           
};

int f_cmp( struct A *x )
{
    return x->sc && x->sc;
}

#include <stdio.h>
int main()
{
    struct A yobj;

    f_cmp( &yobj );

    puts("ok");
}
