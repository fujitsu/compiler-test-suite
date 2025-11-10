#include <stdio.h>
#include "000.h"

int main()
{
    test05    ts;
    int       ret=0;
    int       i, j, k;

    for( i = 0; i < count_max; i++)
    {
        ts.a[i] = 1;
        ts.b[i] = 0;
    }

    for( j = 0; j < count_max; j++)
    {
        ts.b[j] = ts.a[j] * j;
    }

    for( k = 0; k < count_max; k++)
    {
        ret += ts.b[k];
    }

    if( ret == ANSWER)
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}    
    
