#include <stdio.h>

struct tag {
    long double   ld_a;
    double        d_a[509];
} st1[2];

int sub( struct tag *pst )
{
    return pst[0].ld_a+pst[1].ld_a;
}
int main( void )
{
    printf(" ---- start ----\n");
    st1[0].ld_a=1.0;
    st1[1].ld_a=2.0;
    if(sub(st1) == 3)
        printf("    ****  ok  ****\n");
    else
        printf("    ????  ng  ????\n");
    printf(" ----  end  ----\n");
}
