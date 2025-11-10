#include <stdio.h>
#include "000.h"

int main()
{
    test10    ts;
    int       i, j;

    for( i = 0; i < count_max; i++)
    {
        ts.a[i] = 'a';
        for( j = 0; j < count_max; j++)
        {
            ts.b[i][j] = 'b';
        }
    }
    ts.a[1000] = '\n';

    printf("OK\n");

    return 0;
}    
    
