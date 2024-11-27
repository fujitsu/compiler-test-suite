#include <stdio.h>

#include <setjmp.h>

int f1();
jmp_buf env ;
int main()
{
    int a ;
    printf(" test start\n");
    if (setjmp(env) != 0) printf("ng\n");
    else
    {
        a = f1(2) ;
        while ( a != 0 ) a-- ;
        if ( a==0 ) printf("ok\n");
    }
    printf(" test end\n");
    return 0 ;
}
int f1() { return 0 ; }
