#include <stdio.h>
#include "000.h"

test27    ts[count_max][count_max];

int main()
{

    int     i, k, j;

    for( i = 0; i < count_max; i++)
    {
        for( k = 0; k < count_max; k++ )
        {
            for( j = 0; j < hairt_max; j++ )
            {
                ts[i][k].a[j] = 'a';
            }
        }
    }

    if( ts[999][999].a[4] == 'a' )
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
