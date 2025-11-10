#include <stdio.h>
#include "000.h"

int main()
{
    test12    ts;
    int       ret;
    int       i, j;

    for( i = 0; i < count_max; i++)
    {
        ts.a[i] = count_max;
        ts.b[i] = i;
    }

    for( j = count_max-1; j >= count_min; j--)
    {
        ts.ans[j] = ts.a[j] - ts.b[j];
    }

    if( ts.ans[9999] == ANSWER)
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}    
    
