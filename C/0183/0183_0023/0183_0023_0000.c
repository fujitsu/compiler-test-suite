#include <stdio.h>
#include "000.h"

test26    ts[count_max];

int main()
{

    int     i, k, j;

    for( i = 0; i < count_max; i++)
    {
        for( k = 0; k < hairt_max; k++ )
        {
	    for( j = 0; j < hairt_max; j++ )
	    {
                ts[i].a[k][j] = 'a';
            }       
        }
    }

    if( ts[9999].a[4][4] == 'a' )
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
