#include <stdio.h>
#include "000.h"

int main()
{
    test07    ts;
    int       i;

    for( i = 0; i < count_max; i++)
    {
        ts.a[i] = 'a';
    }
    ts.a[10000] = '\n';

    printf("OK\n");

    return 0;
}    
    
