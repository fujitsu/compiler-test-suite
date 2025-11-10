#include <stdio.h>
#include "000.h"

test25    ts[count_max];

int main()
{

    int     i;

    for( i = 0; i < count_max; i++)
    {
        ts[i].a[0] = 'a';
    }

    if( ts[9999].a[0] == 'a' )
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
