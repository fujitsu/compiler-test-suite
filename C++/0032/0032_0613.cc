





#include <stdio.h>
#include <string.h>
int main()
{
    union { 
        int a;
        char *p;
    } uobj, *pobj = &uobj;

    uobj.a = 1;
    if( pobj->a == 1 )
    {
        pobj->p = "domdom";
        if( !strcmp(uobj.p,"domdom") )
            printf("ok\n");
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}
