#include <stdio.h>
#include "000.h"

int main()
{
    test16    ts;
    int       i, j;

    for( i = 0; i < count_max; i++)
    {
        ts.a[i] = 1;
        ts.b[i] = 1;
    }

    for( j = 0; j < count_max; j++)
    {
        ts.ans[j] = ts.a[j] + ts.b[j];
    }

    if( ts.ans[9999] == ANSWER)
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}    
    
