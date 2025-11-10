#include <stdio.h>
#include "000.h"

int main()
{
    test09    ts;
    int       i, j;

    for( i = 0; i < count_max; i = i + 2)
    {
        if( i != count_max ){
            ts.a[i] = 'a';
        }else{
            ts.a[i] = '\n';
        }    
    }

    for( j = 1; j < count_max; j = j + 2)
    {
        ts.a[j] = 'b';
    }

    printf("OK\n");

    return 0;
}
